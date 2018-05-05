#include "231DFA.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include <set>
using namespace llvm;
using namespace std;

class MayPointToInfo : public Info {
public:
    std::map<unsigned int, std::set<unsigned int> > data;

    void print() {
        for (auto i : data) {
            errs() << "R" << i.first << "->" << "(";
            for (auto j : i.second)
                errs() << "M"<< j << "/"; 
            errs() << ")";
            errs() << "|";
        }
        errs() << "\n";
    }
    MayPointToInfo() {}
    MayPointToInfo(MayPointToInfo *a) {
        data = a->data;
    }
    static bool equals(MayPointToInfo * info1, MayPointToInfo * info2) {
        return info1->data == info2->data;
    }
    static MayPointToInfo* join(MayPointToInfo *info1, MayPointToInfo *info2, MayPointToInfo *ret) {
        if (info1 != ret)
        for (auto i : info1->data)
            for (auto j : i.second)
                ret->data[i.first].insert(j);
        if (info2 != ret)
        for (auto i : info2->data)
            for (auto j : i.second)
                ret->data[i.first].insert(j);
        return NULL;
    }
    void addData(unsigned int x, unsigned int y) {
        data[x].insert(y);
    }
    void removeData(unsigned int x, unsigned int y) {
        data[x].erase(y);
    }
};


class MayPointToAnalysis : public DataFlowAnalysis<MayPointToInfo, true> {
public:
    MayPointToAnalysis(MayPointToInfo & bottom, MayPointToInfo & initialState) : 
            DataFlowAnalysis(bottom, initialState) {}



    void flowfunction(Instruction * I, std::vector<unsigned> & IncomingEdges, 
        std::vector<unsigned> & OutgoingEdges, std::vector<MayPointToInfo *> & Infos) {

        string op = I->getOpcodeName();



        int instIndex = InstrToIndex[I];
        
        MayPointToInfo *retInfo = new MayPointToInfo();

        for (auto i : IncomingEdges) {
            MayPointToInfo::join(EdgeToInfo[make_pair(i, instIndex)] , retInfo, retInfo);
        }



        if (op == "alloca") {
            retInfo->addData(instIndex, instIndex);
        } else
        if (op == "bitcast") {
            unsigned ind = InstrToIndex[(Instruction *) I->getOperand(0)];
            for (auto i : retInfo->data[ind])
                retInfo->addData(instIndex, i);
        } else
        if (op == "getelementptr") {
            GetElementPtrInst * instr = cast<GetElementPtrInst> (I);
            unsigned ind = InstrToIndex[(Instruction *) instr->getPointerOperand()];
            for (auto i : retInfo->data[ind])
                retInfo->addData(instIndex, i);
        } else 
        if (op == "load") {
            if (I->getType()->isPointerTy()) {
                printf("loading\n");
                LoadInst * instr = cast<LoadInst> (I);
                unsigned ind = InstrToIndex[(Instruction *) instr->getPointerOperand()];

                for (auto i : retInfo->data[ind]) {
                    for (auto j : retInfo->data[i]) {
                        retInfo->addData(instIndex, j);
                    }
                }

            }
        } else 
        if (op == "store") {
            if (I->getType()->isPointerTy()) {
                StoreInst * instr = cast<StoreInst> (I);
                unsigned indv = InstrToIndex[(Instruction *) instr->getValueOperand()];
                unsigned indp = InstrToIndex[(Instruction *) instr->getPointerOperand()];
                for (auto i : retInfo->data[indp]) {
                    for (auto j : retInfo->data[indv]) {
                        retInfo->addData(i, j);
                    }
                }

            }
        } else 
        if (op == "select") {
            SelectInst * instr = cast<SelectInst> (I);
            unsigned r1 = InstrToIndex[(Instruction *) instr->getTrueValue()];
            unsigned r2 = InstrToIndex[(Instruction *) instr->getFalseValue()];
            for (auto i : retInfo->data[r1]) {
                retInfo->addData(instIndex, i);
            }
            for (auto i : retInfo->data[r2]) {
                retInfo->addData(instIndex, i);
            }
        } else {

            BasicBlock * block = I->getParent();
            for (auto ii = block->begin(); &(*ii) != block->getFirstNonPHI(); ++ii) {
                PHINode *pnd = dyn_cast<PHINode>(&*ii);
                for (size_t i = 0; i < pnd->getNumIncomingValues(); i ++) {
                    Instruction *inst = (Instruction *) (pnd->getIncomingValue(i));
                    for (auto j : retInfo->data[InstrToIndex[inst]])
                        retInfo->addData(InstrToIndex[&*ii], j);
                }
                // errs()<<"fin"<<"\n";
            }
        }

        for (size_t i = 0; i < OutgoingEdges.size(); i ++)
            Infos.push_back(retInfo);
        
    }

};


namespace {
    struct MayPointToAnalysisPass : public FunctionPass {
        static char ID;
        MayPointToAnalysisPass() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            MayPointToInfo bottom;
            MayPointToInfo initialState;
            MayPointToAnalysis * main = new MayPointToAnalysis(bottom, initialState);
            // errs() << "-----------------------------------------------\n";
            main->runWorklistAlgorithm(&F);
            main->print();

            return false;
        }
    }; 
}  

char MayPointToAnalysisPass::ID = 6;
static RegisterPass<MayPointToAnalysisPass> X("cse231-maypointto", "5",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);