#ifndef MODULE_CHECKER_H
#define MODULE_CHECKER_H
#include "debug_parser.h"
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfo.h"
#include "map"
#include <string>
#include <set>
using namespace std;
// #include "lib231/lib231"
using namespace llvm;
const int DW_TAG_inheritance = 28;
string extractNamespace(const string &id, const string &name);
string extractClsName(const string &name);
string extractTplate(const string &name);

class ClassInfo {
public:
    string name, namesp, id, clsName, tplate;
    int cnt;
     DInfo *data;
    bool isDerived, isComposite;
    ClassInfo() {cnt = 0;}
    ClassInfo(string a, string b, string c,  DInfo *d, bool e, bool f) {
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

class DependencyResult {
public:
    enum Type {
        unknown, correct, up2down, unrelated
    };
    Type res;
    DependencyResult() {res = unknown;}
};

class Node {
public:
    string name;
    vector<Node *> edges;
    Node() {name = "";}
    Node(string s) {name = s; }
};

class ModuleChecker {
public:
    DebugParser dp;
    map<string, vector<ClassInfo> > mapClassInfo;

    // map<string, Node *> name2node;
    set<string> possibleName;

    void processType(Module &m);

    void printType();

    QueryResult query(string &name);
    DependencyResult check(string source, string dest);
    void process(string filename);
    void insertClassInfo(string a, string b, string c, DInfo *d, bool e, bool f);
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