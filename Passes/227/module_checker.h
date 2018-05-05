#ifndef MODULE_CHECKER_H
#define MODULE_CHECKER_H

#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfo.h"
#include "map"
#include <string>
using namespace std;
// #include "lib231/lib231"
using namespace llvm;
class ModuleChecker {
public:
    DebugInfoFinder dif;

    void processType(Module &m);

    void printType();

    // ModuleChecker(Module &m) {
        
    //     // errs() << dif.compile_unit_count() << ' '
    //     // << dif.global_variable_count() << ' ' 
    //     // << dif.subprogram_count () << ' '
    //     // << dif.type_count ()  << ' '
    //     // << dif.scope_count ()  << "\n";
    //     // // iterator_range< type_iterator > i = dif.types();
    //     // auto x = dif.types();
    //     // for (auto i = x.begin(),
    //     //             e = x.end();
    //     //             i != e; ++i) {
    //     //         const DIType *S = *i;
    //     //         if (isa<DIDerivedType>(S)) 
    //     //             errs() << (S->getName()) << "\n";
    //     //     }
    //     // return true;
    // }

};

#endif