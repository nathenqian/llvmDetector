#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"

#include<sstream>
#include<map>
#include<set>
#include<queue>

#define DEBUG


using namespace std;
using namespace llvm;

namespace {


struct Value_From
{
	vector<pair<Value*,string> > from;
	
	Value_From(){from.clear();};
};


struct CastAnalysis : public ModulePass
{
	static char ID;
	
	//map <string,(void*)(const Instruction&)> Handler;
	map <Value*,int> InstrId;
	
	int InstrNum;
	
	map <Value*,Value_From> ValueFather,_ValueFather;
	
	Value* ThisF;
	
	map <Value*, set<pair<Value*,string> > > Set;
	
	map <Value*, set<Function*> > FuncMap;

	queue <pair<Value*,pair<Value*,string> > > Que;
	
	map <Value*,map<int,Function*> > Vtable;
	
	void Push(Value* v,Value* t,string s)
	{
	//	errs()<<"Push: "<<InstrId[v]<<":"<<InstrId[t]<<":"<<s<<'\n';
		if(Set[v].count(make_pair(t,s))==0)
		{
			Set[v].insert(make_pair(t,s));
			Que.push(make_pair(v,make_pair(t,s)));
		}
	}
	
	void Desolve(string This,string&kind,vector<int>&V)
	{
		std::size_t f=This.find("element");
		if(f==std::string::npos)
		{
			if(This=="store"||This=="load")
				kind=This;
			else if(This.substr(0,strlen("indirectcall"))=="indirectcall")
				kind="indirectcall";
			else kind="";
			return;
		}
		string vec;
		if(f>0)
		{
			if(This.substr(0,f)=="load ")
			{
				kind="load from";
				vec=This.substr(strlen("load element from "),This.length()-strlen("load element from "));
			}
			else
			{
				kind="store into";
				vec=This.substr(strlen("store element into"),This.length()-strlen("store element into"));
			}
			errs()<<"Untreadted : load or store element\n";
		}
		else
		{
			if(This.substr(0,strlen("element into"))=="element into")
			{
				kind="into";
				vec=This.substr(strlen("element into "),This.length()-strlen("element into "));
			}
			else
			{
				kind="from";
				vec=This.substr(strlen("element from "),This.length()-strlen("element from "));
			}
		}
		istringstream sin(vec);
		for(int x;!sin.eof();)
		{
			sin>>x;
			V.push_back(x);
		}
		if(V.size()==1&&V[0]==0)
		{
			kind="";
			V.clear();
		}
	}
	
	void Desolve_Last_Element(string Now,string&res,string&kind,vector<int>&V)
	{
		V.clear();
		string This;
		std::size_t f2=Now.rfind("\n");
		if(f2==std::string::npos)
		{
			res="";
			This=Now;
			Desolve(This,kind,V);
		}
		else
		{
			res=Now.substr(0,f2);
			This=Now.substr(f2+1,Now.length()-f2-1);
			Desolve(This,kind,V);
		}
		
	}
	
	void Desolve_First_Element(string Now,string&res,string&kind,vector<int>&V)
	{
		V.clear();
		string This;
		std::size_t f2=Now.find("\n");
		if(f2==std::string::npos)
		{
			res="";
			This=Now;
			Desolve(This,kind,V);
		}
		else
		{
			res=Now.substr(f2+1,Now.length()-f2-1);
			This=Now.substr(0,f2);
			Desolve(This,kind,V);
		}
	}
	
	bool can_equal(vector<int>&a,vector<int>&b)
	{
		if(a.size()!=b.size())
			return false;
		for(size_t i=0;i<a.size();i++)
			if(a[i]!=b[i]&&a[i]!=-1&&b[i]!=-1)
				return false;
		return true;
	}
	
	Function* CheckFunction(Value* Src, string Now)
	{
		vector<int> dim;
		string kind;
		string res;
		if(!Vtable.count(Src))return NULL;
		if(Now=="")return NULL;
		Desolve_First_Element(Now,res,kind,dim);
		
		if(kind==""&&res!="")
		{
			Now=res;
			Desolve_First_Element(Now,res,kind,dim);
		}
		
		if(kind!="from")return NULL;
		if(res!="load")return NULL;
		for(size_t i=1;i<dim.size();i++)
			if(i!=2&&dim[i]!=0)
				return NULL;
		return Vtable[Src][dim[2]];
	}
	
	void TreatQue(pair<Value*,pair<Value*,string> > front)
	{
		Value* Val=front.first;
		Value* Typ=front.second.first;
		string Now=front.second.second;
		vector<int> dim;
		string kind;
		string res;
		Desolve_Last_Element(Now,res,kind,dim);
		
		#ifdef DEBUG	
		errs()<<"bfs for: "<<InstrId[Val]<<" "<<InstrId[Typ]<<"\n";
	//	errs()<<"--start---------\n"<<Now<<"\n--end----------\n";
		//Val->print(errs(),true);
		//errs()<<"\n";
		
		errs()<<Now<<"\n";
		#endif
		
		Function* F=CheckFunction(Typ,Now);
		for(auto&u:_ValueFather[Val].from)
		{
			Value* _Val=u.first;
			string _Str=u.second;
			string _kind;
			vector<int> _dim;
			string _res;
			#ifdef DEBUG	
			errs()<<"search: "<<InstrId[_Val]<<" "<<_Str<<"\n";
			//errs()<<_Str<<"\n";
			//_Val->print(errs(),true);
			//errs()<<"\n";
			#endif
			Desolve_Last_Element(_Str,_res,_kind,_dim);
			if(_kind=="indirectcall")
			{
				if(F!=NULL&&FuncMap[_Val].count(F)==0)
				{
					FuncMap[_Val].insert(F);
					TreatFuncCall(_Val,F);
				}
			}
			else if(_kind=="")
				Push(_Val,Typ,Now);
			//else if(kind=="")
			//	Push(_Val,Typ,_Str);
			else if(_kind=="load")
			{
				if(kind=="store")
					Push(_Val,Typ,res);
				else if(Now.find("load")==string::npos)
					Push(_Val,Typ,Now+"\n"+_Str);	
			}
			else if(_kind=="store")
				Push(_Val,Typ,Now+"\n"+_Str);	
			else if(_kind=="into")
			{
				if(kind=="from"&&can_equal(dim,_dim))
					Push(_Val,Typ,res);
			}
			else if(_kind=="from")
				Push(_Val,Typ,Now+"\n"+_Str);	
		
		/*	else if(kind=="store"&&_kind=="load"||kind=="load"&&_kind=="store")
				Push(_Val,Typ,res);
			else if((kind=="into"&&_kind=="from"||kind=="from"&&_kind=="into"))
			{
				if(can_equal(dim,_dim))
					Push(_Val,Typ,res);
			}
			else
				Push(_Val,Typ,Now+"\n"+_Str);
		*/}
	}
	
	void CheckVtable(GlobalVariable* G)
	{
		map<int,Function*> f;
		Constant* g=G->getInitializer();
		if(g==NULL)return;
		if(!isa<ConstantAggregate>(*g))return;
		Constant* _g=((ConstantAggregate*)g)->getOperand(0);
		if(!isa<ConstantAggregate>(*_g))return;
		for(size_t i=0;i<_g->getNumOperands();i++)
		{
			Value* bit=_g->getOperand(i);
			bit->print(errs(),true);
			if(!isa<ConstantExpr>(*bit))continue;
			if(!((ConstantExpr*)bit)->getAsInstruction()->isCast())
				continue;
			Value* from=NULL;
			for(auto&uu: ((ConstantExpr*)bit)->operands())
			{
				from=uu.get();
				break;
			}
			if(!isa<Function>(*from))continue;
			f[i]=(Function*)from;
		}
		if(!f.empty())
			Vtable[G]=f;
	}
	
	void TreatFuncCall(Value* U,Function* f)
	{
		((Instruction*)U)->print(errs(),true);
		errs()<<" "<<f->getName()<<" \n";
		
		if(strcmp(((Instruction*)U)->getOpcodeName(),"call")==0)
		{
			CallInst* u=(CallInst*)U;
			ValueFather[u].from.push_back(make_pair(f,"call"));
			_ValueFather[f].from.push_back(make_pair(u,"call"));
			for(auto& uu:Set[f])
				Push(u,uu.first,uu.second);
			for(unsigned k=0;k<(u->getNumArgOperands());k++)
			{
				Value* op=ExprHandler((u->op_begin()+k)->get());
				Value* arg=f->arg_begin()+k;
				ValueFather[arg].from.push_back(make_pair(op,"arg"));
				ValueFather[op].from.push_back(make_pair(arg,"arg"));
				_ValueFather[arg].from.push_back(make_pair(op,"arg"));
				_ValueFather[op].from.push_back(make_pair(arg,"arg"));
				for(auto& uu:Set[arg])
					Push(op,uu.first,uu.second);
				for(auto& uu:Set[op])
					Push(arg,uu.first,uu.second);
				#ifdef DEBUG
				errs()<<InstrId[arg]<<"("<<k<<")->"<<InstrId[op]<<' ';
				#endif
			}
			#ifdef DEBUG
			errs()<<"\nBinding Call: "<<InstrId[u]<<" "<<f->getName()<<"\n";
			#endif
		}	
	}
	
	void Output(Value_From u)
	{
		#ifdef DEBUG
		errs()<<"Value From: ";
		for(auto v:u.from)
		{
			if(InstrId.count(v.first))
				errs()<<InstrId[v.first]<<" ";
			else
				errs()<<"0 ";
			if(v.second!="")
			{
				errs()<<"-"<<v.second<<"- ";
			}
		}
		errs()<<'\n';
		#endif
	}
	
	Value* ExprHandler(Value* x)
	{
		if(isa<ConstantExpr>(*x))
		{
			Instruction* u=((ConstantExpr*)x)->getAsInstruction();
			u->print(errs(),true);
			if(!InstrId[u])
				InstrId[u]=++InstrNum;
		#ifdef DEBUG
			errs()<<InstrId[u]<<" Expr\n";
		#endif
			Treat(u);
		#ifdef DEBUG
			errs()<<InstrId[u]<<" Expr\n";
		#endif
			return u;
		}
		return x;
	}
	
	void BinaryHandler(Instruction& II)
	{
		Value_From IIfather;
		for(auto&u: II.operands())
		{
			Value*from=ExprHandler(u.get());
			IIfather.from.push_back(make_pair(from,"BinaryOps"));
		}
		ValueFather[static_cast<Value*>(&II)]=IIfather;
		#ifdef DEBUG
		errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
		Output(IIfather);
		#endif
	}
	
	void TerminatorHandler(Instruction& II)
	{
		if(strcmp(II.getOpcodeName(),"ret")==0)
		{
			ReturnInst* u=static_cast<ReturnInst*>(&II);
			if((u->getReturnValue())!=NULL)
				ValueFather[ThisF].from.push_back(make_pair(ExprHandler(u->getReturnValue()),"ret"));
			#ifdef DEBUG
			errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
			Output(ValueFather[ThisF]);
			#endif
			return;
		}
		else if(strcmp(II.getOpcodeName(),"invoke")==0)
		{
		}
		else if(strcmp(II.getOpcodeName(),"call")==0)
		{
			CallInst* u=static_cast<CallInst*>(&II);
			Function* f=u->getCalledFunction();
			if(f==NULL)
			{
				Value* fv=u->getCalledValue();
				fv->print(errs(),true);
				ValueFather[u].from.push_back(make_pair(fv,"indirectcall"));
			}
			else
				TreatFuncCall(u,f);
		}
		else if(strcmp(II.getOpcodeName(),"br")==0||strcmp(II.getOpcodeName(),"unreachable")==0||strcmp(II.getOpcodeName(),"switch")==0)
		{
			#ifdef DEBUG
			errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
			#endif
			return;
		}
		else
		{
			errs()<<"Do Not Treat terminator: "<<II.getOpcodeName()<<"\n";
		}
	}	
	
	void PhiHandler(Instruction& II)
	{
		PHINode* u=static_cast<PHINode*>(&II);
		Value_From IIfather;
		for (auto&v: u->incoming_values())
		{
			Value* from=ExprHandler(v.get());
			IIfather.from.push_back(make_pair(from,""));
		}
		ValueFather[static_cast<Value*>(&II)]=IIfather;
		#ifdef DEBUG
		errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
		Output(IIfather);
		#endif
		return;
	}
	
	void ElementHandler(Instruction& II)
	{
		if(strcmp(II.getOpcodeName(),"extractvalue")==0)
		{
			Value *Val=(Value*)(&II);
			Value *Ptr=((ExtractValueInst*)&II)->getAggregateOperand();
			Value_From&IIfather=ValueFather[Val];
			string status="load element from ";
			raw_string_ostream rso(status);
			for(auto&u:((ExtractValueInst*)&II)->indices())
				rso<<u<<" ";
			rso.str();
			status=status.substr(0,status.length()-1);
			IIfather.from.push_back(make_pair(Ptr,status));
			#ifdef DEBUG
			errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
			Output(IIfather);
			#endif
		}
		else if(strcmp(II.getOpcodeName(),"insertvalue")==0)
		{
			Value *Val=((InsertValueInst*)&II)->getInsertedValueOperand();
			Value *Ptr=((InsertValueInst*)&II)->getAggregateOperand();
			Value_From&IIfather=ValueFather[Ptr];
			string status="store element into ";
			raw_string_ostream rso(status);
			for(auto&u:((InsertValueInst*)&II)->indices())
				rso<<u<<" ";
			rso.str();
			status=status.substr(0,status.length()-1);
			IIfather.from.push_back(make_pair(Val,status));	
			#ifdef DEBUG
			errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
			Output(IIfather);
			#endif		
		}
		else if (strcmp(II.getOpcodeName(),"getelementptr")==0)
		{
			Value *Val=(Value*)(&II);
			Value *Ptr=((GetElementPtrInst*)&II)->getPointerOperand();
			
			string status="";
			raw_string_ostream rso(status);
			for(auto&u:((GetElementPtrInst*)&II)->indices())
			{
				u.get()->print(errs(),true);
				if(isa<ConstantInt>(*u.get()))
					rso<<((ConstantInt*)(u.get()))->getSExtValue()<<" ";
				else rso<<"-1 ";
			}
			rso.str();
			status=status.substr(0,status.length()-1);
			
			ValueFather[Ptr].from.push_back(make_pair(Val,"element into "+status));	
			ValueFather[Val].from.push_back(make_pair(Ptr,"element from "+status));	
			
			#ifdef DEBUG
			errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
			Output(ValueFather[Ptr]);
			Output(ValueFather[Val]);
			#endif	
		}
	}
	
	void StoreHandler(Instruction& II)
	{
		StoreInst *u=static_cast<StoreInst*>(&II);
		Value_From&IIfather=ValueFather[u->getPointerOperand()];
		u->getPointerOperand()->print(errs(),true);
		Value* Val=ExprHandler(u->getPointerOperand());
		Val->getType()->print(errs(),true);
		errs()<<"\n"<<isa<Instruction>(*(u->getPointerOperand()))<<'\n';
		u->getValueOperand()->print(errs(),true);
		errs()<<"\n"<<isa<Instruction>(*(u->getValueOperand()))<<'\n';
		IIfather.from.push_back(make_pair(ExprHandler(u->getValueOperand()),"store"));
		ValueFather[ExprHandler(ExprHandler(u->getPointerOperand()))]=IIfather;
		#ifdef DEBUG
		errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
		Output(IIfather);
		#endif
	}
	
	void LoadHandler(Instruction& II)
	{
		StoreInst *u=static_cast<StoreInst*>(&II);
		Value_From IIfather;
		IIfather.from.push_back(make_pair(ExprHandler(u->getPointerOperand()),"load"));
		ValueFather[static_cast<Value*>(&II)]=IIfather;
		#ifdef DEBUG
		errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
		Output(IIfather);
		#endif
	}
	
	void CastHandler(Instruction& II)
	{
		Value_From IIfather;
		string status="Cast from ";
		raw_string_ostream rso(status);
		CastInst *u=static_cast<CastInst *>(&II);
		u->getSrcTy()->print(rso,true);
		rso.str();
		status+=" to ";
		u->getDestTy()->print(rso,true);	
		rso.str();
		status+="\n";
		for(auto&u: II.operands())
		{
			Value*from=ExprHandler(u.get());
			if(InstrId.count(from))
				IIfather.from.push_back(make_pair(from,status));
		}
		ValueFather[static_cast<Value*>(&II)]=IIfather;
		#ifdef DEBUG
		errs()<<"Treated: "<<II.getOpcodeName()<<"\n";
		Output(IIfather);
		#endif
	}
	
	void Treat(Instruction*II)
	{
		if(II->isBinaryOp())
			BinaryHandler(*II);
		else if(strcmp(II->getOpcodeName(),"landingpad")==0||
				strcmp(II->getOpcodeName(),"resume")==0
				)
		{
			#ifdef DEBUG
			errs()<<"Unfinished: "<<II->getOpcodeName()<<"\n";
			#endif
		}
		else if(II->isTerminator()||strcmp(II->getOpcodeName(),"call")==0)
			TerminatorHandler(*II);
		else if(II->isCast())
			CastHandler(*II);
		else if(strcmp(II->getOpcodeName(),"phi")==0)
			PhiHandler(*II);
		else if(strcmp(II->getOpcodeName(),"getelementptr")==0||
				strcmp(II->getOpcodeName(),"extractvalue")==0||
				strcmp(II->getOpcodeName(),"insertvalue")==0)
				ElementHandler(*II);
		else if(strcmp(II->getOpcodeName(),"icmp")==0||
				strcmp(II->getOpcodeName(),"fcmp")==0||
				strcmp(II->getOpcodeName(),"alloca")==0)
		{
			#ifdef DEBUG
			errs()<<"Do Not Treat: "<<II->getOpcodeName()<<"\n";
			#endif
		}
		else if(strcmp(II->getOpcodeName(),"load")==0)
			LoadHandler(*II);
		else if(strcmp(II->getOpcodeName(),"store")==0)
			StoreHandler(*II);
		else
		{
			#ifdef DEBUG
			errs()<<"Untreated: "<<II->getOpcodeName()<<"\n";
			#endif
		}	
	}
	
	CastAnalysis() : ModulePass(ID) 
	{
	//	Handler[""]=&;
	}
	
	bool doInitialization(Module &M) override
	{
		return false;
    }
	
	bool runOnModule(Module &M) override
	{
		errs()<<"---------------Global-----------\n";
		InstrNum=0;
		for(auto &IG: M.globals())
		{
			#ifdef DEBUG
			IG.print(errs(),true);
			errs()<<'\n';
			#endif
			InstrId[static_cast<Value*>(&IG)]=++InstrNum;
			ValueFather[static_cast<Value*>(&IG)].from.push_back(make_pair((Value*)NULL,""));
		}
		errs()<<"---------------Global-----------\n";
		for(auto &IF : M)
		{
			if(!InstrId.count(&IF))
				InstrId[&IF]=++InstrNum;
			errs()<<IF.getName()<<"\n";
			for(auto & IA: IF.args())
				if(!InstrId.count(&IA))
				{
					InstrId[&IA]=++InstrNum;
//					errs()<<InstrNum<<"-"<<"argument "+to_string(&IA-IF.arg_begin())<<" ";
//					ValueFather[&IA].from.push_back(make_pair(&IF,"argument "+to_string(&IA-IF.arg_begin())));
				}
			errs()<<'\n';
			for(auto &IB : IF)
				for(auto &II : IB)
					if(!InstrId.count(&II))
						InstrId[&II]=++InstrNum;
		}		
		for(auto &IF : M)
		{
			errs()<<IF.getName()<<"\n";
			#ifdef DEBUG
			IF.getReturnType()->print(errs(),true);
			#endif
			ThisF=&IF;
			for(auto &IB : IF)
			{
				for(auto &II : IB)
				{
					
					#ifdef DEBUG
					errs()<<II.getOpcodeName();
					errs()<<InstrId[&II]<<": ";
					II.print(errs(),true);
					errs()<<"\n";
					#endif
					
					Treat(&II);
					/*errs()<<"Uses:\n";
					for(auto&u: (static_cast<User*>(&II))->operands())
					{
						static_cast<Value*>(u)->getType()->print(errs(),true);
						errs()<<' '<<InstrId[static_cast<Value*>(u)]<<" ";
					}
					errs()<<"\nUsers:\n";
					for(auto const u: II.users())
					errs()<<InstrId[static_cast<Value*>(u)]<<" ";
					errs()<<"\n";*/
				}
			}
		}
		for(auto&u:ValueFather)
			for(auto&v:u.second.from)
			{
				if(InstrId[u.first]==23&&InstrId[v.first]==22)
				{
					errs()<<"?????????????\n";
					errs()<<v.second<<"\n";
				}
				if(v.second!="load"&&v.second!="store"&&v.second.find("element")==string::npos&&v.second!="indirectcall")
				{
					_ValueFather[v.first].from.push_back(make_pair(u.first,v.second));
					_ValueFather[u.first].from.push_back(make_pair(v.first,v.second));
				}	
				else if(v.second=="load")
				{
					_ValueFather[v.first].from.push_back(make_pair(u.first,v.second));
					_ValueFather[u.first].from.push_back(make_pair(v.first,"store"));
				}
				else if(v.second=="store")
				{
					
					_ValueFather[v.first].from.push_back(make_pair(u.first,v.second));
					_ValueFather[u.first].from.push_back(make_pair(v.first,"load"));
				}
				else
					_ValueFather[v.first].from.push_back(make_pair(u.first,v.second));
			}
		for(auto &IG: M.globals())
		{
			Push(&IG,&IG,"global");
			errs()<<InstrId[&IG]<<" global\n";
			CheckVtable(&IG);
			if(Vtable.count(&IG))
			{
				errs()<<"Vtable: "<<IG.getName()<<"\n";
				for(auto&u:Vtable[&IG])
					errs()<<u.first<<":"<<u.second->getName()<<"("<<InstrId[u.second]<<") ";
				errs()<<"\n";
			}
			IG.print(errs(),true);errs()<<"\n";	
		}
		for(auto &IF : M)
		{
			errs()<<IF.getName()<<"::\n";
			for(auto &IB : IF)
				for(auto &II : IB)
				{
					if(isa<AllocaInst>(II))
						Push(&II,&II,"alloca");
					errs()<<InstrId[&II]<<" ";
					(&II)->print(errs(),true);
					errs()<<'\n';
				}					
		}
		for(;!Que.empty();Que.pop())
			TreatQue(Que.front());
		for(auto &IF : M)
			for(auto &IB : IF)
				for(auto &II : IB)
				{
					errs()<<InstrId[&II]<<":";
				//	II.print(errs(),true);
					for(auto&u:Set[&II])
						errs()<<InstrId[u.first]<<"\n---start---------\n"<<u.second<<"\n---end-----------\n";
					errs()<<'\n';
				}
		return true;
	}
	
	
}; // end of struct Hello
}  // end of anonymous namespace

char CastAnalysis::ID = 0;
static RegisterPass<CastAnalysis> X("CastAnalysis", "Hello World Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);