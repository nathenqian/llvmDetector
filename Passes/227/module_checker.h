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

string extractNamespace(const string &id, const string &name);
string extractClsName(const string &name);
string extractTplate(const string &name);

class ClassInfo {
public:
    string name, namesp, id, clsName, tplate;
    int cnt;
    const DIType *data;
    bool isDerived, isComposite;
    ClassInfo() {cnt = 0;}
    ClassInfo(string a, string b, string c, const DIType *d, bool e, bool f) {
        name = a; 
        namesp = b;
        id = c;
        data = d;
        isDerived = e;
        isComposite = f;
        cnt = 0;
        if (name != "") {
            clsName = extractClsName(id);
            tplate = extractTplate(id);
        }
    }
};

class QueryResult {
public:
    string info;
};

class ModuleChecker {
public:
    DebugInfoFinder dif;
    map<string, vector<ClassInfo> > mapClassInfo;
    void processType(Module &m);

    void printType();

    QueryResult query(string &name);

    void insertClassInfo(string a, string b, string c, const DIType *d, bool e, bool f);
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