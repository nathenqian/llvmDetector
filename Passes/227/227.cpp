#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfo.h"
#include "map"
#include "module_checker.h"
// #include "lib231/lib231"
using namespace llvm;

namespace {
struct Security : public ModulePass {
    static char ID;
    ModuleChecker mc;
    Security() : ModulePass(ID) {}

    bool doInitialization(Module &mod) override {
        // return false;
         
    }

    void checkType(Type *a) {
        while (a->isPointerTy()) {
            a = cast<PointerType>(a)->getElementType();
        }
        // errs() << a->getName().str() << "\n";
        if (isa<StructType>(a)) {
            StructType *b = cast<StructType>(a);
            string name = b->getName().str();
            if (name.size() >= 6 && name.substr(0, 6) == "class.") {
                string temp = name.substr(6, string::npos);
                mc.query(temp);
            } else 
            if (name.size() >= 7 && name.substr(0, 7) == "struct.") {
                string temp = name.substr(7, string::npos);
                mc.query(temp);
            }    
            errs() << name << "\n";
        }
    }

    bool runOnModule(Module &M) override {
        errs() << "Now passing " << M.getSourceFileName() << "\n";
        mc.processType(M);
        for (auto &func : M)
        for (auto &bb : func)
        for (auto &raw_inst : bb) {
            if (raw_inst.isCast()) {
                CastInst *inst = cast<CastInst>(&raw_inst);
                Type *srcType = inst->getSrcTy();
                Type *destType = inst->getDestTy();
                

                if (srcType->isPointerTy() && destType->isPointerTy()) {
                    errs() << "-------------------------------cast between-------------------------" << "\n";
                    srcType->print(errs(), true);  errs() << "\n";
                    destType->print(errs(), true);  errs() << "\n";
                    // continue;
                    // destType->print(errs(), true);  errs() << "\n";
                    Type *a = cast<PointerType>(srcType)->getElementType();
                    checkType(a);
                    a = cast<PointerType>(destType)->getElementType();
                    checkType(a);
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

char Security::ID = 10;
static RegisterPass<Security> X("cse227", "null",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);


