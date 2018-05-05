#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "map"
// #include "lib231/lib231"
using namespace llvm;

namespace {
struct CountDynamicInstruction : public FunctionPass {
  static char ID;
  std::map<std::string, int> counter;
  // LLVMContext *context;
  CountDynamicInstruction() : FunctionPass(ID) {}

  bool doInitialization(Module &mod) override {
      
  }

  bool runOnFunction(Function &F) override {


    // ConstantInt *constOne = ConstantInt::get(Type::getInt32Ty(context), 1, false);
    // GlobalVariable *gv = new GlobalVariable(*(F.getParent()), ArrayTy, no)    
    LLVMContext &context = F.getParent()->getContext();
    for (Function::iterator funcIter = F.begin(); funcIter != F.end(); ++funcIter) {
        for (BasicBlock::iterator i = funcIter->begin(); i != funcIter->end(); ++i) {
            IRBuilder<> builder(&(*i));        
            Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("helper", 
                                      Type::getVoidTy(context), Type::getInt32Ty(context)));
            // Function *helper = cast<Function>(F.getParent()->getOrInsertFunction("printsss", 
                                              // Type::getVoidTy(context)));
            // errs() << i->getOpcodeName() << '\n';
            
            ConstantInt *constOp = ConstantInt::get(Type::getInt32Ty(context), i->getOpcode(), true);
            std::vector<Value*> args;
            args.push_back(constOp);
            builder.CreateCall(helper, args);
            if (i->getOpcode() == 1) {
                // errs() << "-----------------------------------------------\n";
                Function *print = cast<Function>(F.getParent()->getOrInsertFunction("print", 
                                              Type::getVoidTy(context)));
                builder.CreateCall(print);
            }
            
        }

    }



    // LLVMContext &context = F.getParent()->getContext();
    
    
    // errs() << "cdi" << "\n";
    return false;
  }
}; // end of struct CountDynamicInstruction
}  // end of anonymous namespace

char CountDynamicInstruction::ID = 1;
static RegisterPass<CountDynamicInstruction> X("cse231-cdi", "null",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);


