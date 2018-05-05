#include "llvm/Pass.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "map"
// #include "lib231/lib231"
using namespace llvm;

namespace {
struct BB : public FunctionPass {
  static char ID;
  std::map<std::string, int> counter;
  // LLVMContext *context;
  BB() : FunctionPass(ID) {}

  bool doInitialization(Module &mod) override {
      
  }

  bool runOnFunction(Function &F) override {


    // ConstantInt *constOne = ConstantInt::get(Type::getInt32Ty(context), 1, false);
    // GlobalVariable *gv = new GlobalVariable(*(F.getParent()), ArrayTy, no)    
    LLVMContext &context = F.getParent()->getContext();
    for (Function::iterator funcIter = F.begin(); funcIter != F.end(); ++funcIter) {
        for (BasicBlock::iterator i = funcIter->begin(); i != funcIter->end(); ++i) {
            if (i->getOpcode() == 2) {
                BranchInst *br = cast<BranchInst>(&(*i));
                // errs() << br->isConditional() << "\n";

                

                if (br->isConditional()) {
                    IRBuilder<> builder(&(*(i)));
                    Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("updateBranchInfo", 
                            Type::getVoidTy(context), Type::getInt1Ty(context)));
                    std::vector<Value*> args;
                    args.push_back(br->getCondition());
                    builder.CreateCall(helper, args);

                    // unsigned cnt = br->getNumSuccessors();
                    // for (int i = 0; i < cnt; i ++) {
                    // BasicBlock *blk = br->getSuccessor(0);
                    // IRBuilder<> builder2(&(*(blk->begin())));

                    // helper = cast<Function>(F.getParent()->getOrInsertFunction("branchTaken", 
                        // Type::getVoidTy(context)));
                    // builder2.CreateCall(helper);

                    // if () {

                    // }
                    // }
                }
            }

            // IRBuilder<> builder(&(*i));        
            // Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("helper", 
            //                           Type::getVoidTy(context), Type::getInt32Ty(context)));
            // // Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("printsss", 
            //                                   // Type::getVoidTy(context)));
            // // errs() << i->getOpcodeName() << '\n';
            
            // ConstantInt *constOp = ConstantInt::get(Type::getInt32Ty(context), i->getOpcode(), true);
            // std::vector<Value*> args;
            // args.push_back(constOp);
            // builder.CreateCall(helper, args);
            if (i->getOpcode() == 1) {
                // errs() << "-----------------------------------------------\n";
                Function *print = cast<Function>(F.getParent()->getOrInsertFunction("printOutBranchInfo", 
                                              Type::getVoidTy(context)));
                IRBuilder<> builder(&(*(i)));
                builder.CreateCall(print);
            }
            
        }

    }



    // LLVMContext &context = F.getParent()->getContext();
    
    

    return false;
  }
}; // end of struct BB
}  // end of anonymous namespace

char BB::ID = 2;
static RegisterPass<BB> X("cse231-bb", "null",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);


