#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include <map>
using namespace llvm;

namespace {
struct CountStaticPass : public FunctionPass {
  static char ID;
  std::map<std::string, int> counter;

  CountStaticPass() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    // errs() << "Hello: ";
    // errs().write_escaped(F.getName()) << '\n';
    counter.clear();
    for (Function::iterator funcIter = F.begin(); funcIter != F.end(); ++funcIter) {
        for (BasicBlock::iterator i = funcIter->begin(); i != funcIter->end(); ++i) {
            counter[i->getOpcodeName()] += 1;
            // errs() << i->getOpcodeName() << '\n';
        } 
        
    }
    for (auto i : counter) {
        errs() << i.first << '\t' << i.second << "\n";
    }
    // errs() << "csi" << "\n";
    return false;
  }
}; // end of struct CountStaticPass
}  // end of anonymous namespace

char CountStaticPass::ID = 1;
static RegisterPass<CountStaticPass> X("cse231-csi", "null",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);


