#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "debug_parser.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfo.h"
#include "map"
#include "module_checker.h"
// #include "lib231/lib231"
using namespace llvm;

namespace {
struct PreParse : public ModulePass {
    static char ID;
    ModuleChecker mc;
    
    map<pair<string, string>, int> cnts;
  
    PreParse() : ModulePass(ID) {}

    bool doInitialization(Module &mod) override {
        // return false;
         
    }

    
    bool runOnModule(Module &M) override {
        // errs() << "Now pre-passing " << M.getSourceFileName() << "\n";
        // mc.process(M.getSourceFileName());
      long long cnts = 0;
        for (auto &func : M)
        for (auto &bb : func)
        for (auto &raw_inst : bb) {
            cnts += 1;
            if (raw_inst.isCast()) {
                CastInst *inst = cast<CastInst>(&raw_inst);
                Type *srcType = inst->getSrcTy();
                Type *destType = inst->getDestTy();

                if (srcType->isPointerTy() && destType->isPointerTy()) {
                    // errs() << "-------------------------------cast between-------------------------" << "\n";
                    srcType->print(errs(), true);  errs() << "|||" ;
                    destType->print(errs(), true);  errs() << "\n";
                    // continue;
                    // destType->print(errs(), true);  errs() << "\n";
                    // Type *a = cast<PointerType>(srcType)->getElementType();
                    // checkType(a);
                    // Type *b = cast<PointerType>(destType)->getElementType();
                    // checkType(b);
                    // checkDepend(a, b);
                    // errs() << a->isStructTy() << "\n";
                    // if (a->isStructTy()) {
                    //     errs() << "-------src-------";
                    //     StructType *s = cast<StructType>(a);
                    //     errs() << s->getName();
                    //     // for (auto x = s->element_begin ();x !=s->element_end() ;x ++) {
                    //         // (*x)->print(errs()); errs() << " ";
                    //     // }
                    //     errs() << "\n";
                    // }
                    // a = cast<PointerType>(destType)->getElementType();
                    // // errs() << a->isStructTy() << "\n";
                    // if (a->isStructTy()) {
                    //     errs() << "-------dest-------";
                    //     StructType *s = cast<StructType>(a);
                    //     for (auto x = s->element_begin ();x !=s->element_end() ;x ++) {
                    //         (*x)->print(errs()); errs() << " ";
                    //     }
                    //     errs() << "\n";
                    // }
                }
                
            }
        }
        errs() << cnts << "\n";
        return true;
    }
  // bool runOnFunction(Function &F) override {


  //   // ConstantInt *constOne = ConstantInt::get(Type::getInt32Ty(context), 1, false);
  //   // GlobalVariable *gv = new GlobalVariable(*(F.getParent()), ArrayTy, no)    
  //   LLVMContext &context = F.getParent()->getContext();
  //   for (Function::iterator funcIter = F.begin(); funcIter != F.end(); ++funcIter) {
  //       for (BasicBlock::iterator i = funcIter->begin(); i != funcIter->end(); ++i) {
  //           IRBuilder<> builder(&(*i));        
  //           Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("helper", 
  //                                     Type::getVoidTy(context), Type::getInt32Ty(context)));
  //           // Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("printsss", 
  //                                             // Type::getVoidTy(context)));
  //           // errs() << i->getOpcodeName() << '\n';
            
  //           ConstantInt *constOp = ConstantInt::get(Type::getInt32Ty(context), i->getOpcode(), true);
  //           std::vector<Value*> args;
  //           args.push_back(constOp);
  //           builder.CreateCall(helper, args);
  //           if (i->getOpcode() == 1) {
  //               // errs() << "-----------------------------------------------\n";
  //               Function *print = cast<Function>(F.getParent()->getOrInsertFunction("print", 
  //                                             Type::getVoidTy(context)));
  //               builder.CreateCall(print);
  //           }
            
  //       }

  //   }



  //   // LLVMContext &context = F.getParent()->getContext();
    
    
  //   // errs() << "cdi" << "\n";
  //   return false;
  // }
}; // end of struct CountDynamicInstruction
}  // end of anonymous namespace

char PreParse::ID = 11;
static RegisterPass<PreParse> X("cse227-pre", "null",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);


