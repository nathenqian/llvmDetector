#ifndef DEBUG_PARSER_H
#define DEBUG_PARSER_H
#include <map>
#include <vector>
#include <fstream>
#include <sstream>
#include <string>
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfo.h"

using namespace std;
using namespace llvm;
string int2str(int i);
bool isNumber(string i);
int str2int(string n);

class DInfo {
public:
    int id;
    enum ty {
        empty, unit, nameSpace, composite, derive, file, importedEntity, basic, subroutineType,
        subProgram, vec
    };
    ty typ;
    virtual string toString() = 0;
    virtual int parse(vector<string> &para) {return 0;}
    virtual void genPtr(map<int, DInfo *> *infos) {}
};

class InfoData {
public: 
    int first;
    DInfo* second;
    InfoData() {first = -1; second = (DInfo *)NULL;}
    InfoData(int a, DInfo *b) {first = a; second = b;}
};

class DInfoEmpty : public DInfo {
public:
    DInfoEmpty() {typ = DInfo::empty;}
    DInfoEmpty(int _id) {typ = DInfo::empty; id = _id;}
    string toString() {return "empty";}
};

class DInfoVec : public DInfo {
public:
    vector< InfoData > data;
    DInfoVec() {typ = DInfo::vec;}
    DInfoVec(int _id) {typ = DInfo::vec; id = _id;}
    string toString() {
        string ret =  " !" + int2str(id) + " = {" ;
        for (auto i : data) {
            if (i.first == -1)
                ret += "null, ";
            else
                ret += "!" + int2str(i.first) + ", ";
        }
        ret += "}";
        return ret;
    }

    int parse(vector<string> &para) {
        // errs() << "1\n";
        for (auto &n : para) {
            // errs() << n << "\n";
            if (n == "null") {
                data.push_back(InfoData(-1, (DInfo*)NULL));
            } else 
            if (n[0] == '!' && isNumber(n.substr(1, string::npos))) {
                data.push_back(InfoData(str2int(n.substr(1, string::npos)), (DInfo*)NULL));
            } else {
                data.clear();
                return -1;
            }
        }
        return 0;
    }
    void genPtr(map<int, DInfo *> *infos) {
        for (auto n : data) {
            n.second = (*infos)[n.first];
            // errs() << n.second << "\n";
        }
    }
    
};
class DInfoComposite : public DInfo {
public:
    DInfoComposite() {typ = DInfo::composite;}
    DInfoComposite(int _id) {typ = DInfo::composite; id = _id;}
    string tag, name;
    InfoData file, scope;
    //(tag: DW_TAG_class_type, name: "C", file: !1, elements: !11, identifier: "_ZTS1C")
    void genPtr(map<int, DInfo *> *infos) {
        if (file.first != -1) file.second = (*infos)[file.first];
        if (scope.first != -1) scope.second = (*infos)[scope.first];
    }
    string toString() {
        string ret =  " !" + int2str(id) + " = {" ;
        if (tag != "") ret += "tag: " + tag + ", ";
        if (name != "") ret += "name: " + name + ", ";
        if (file.first != -1) ret += "file: !" + int2str(file.first) + ", ";
        if (scope.first != -1) ret += "scope: !" + int2str(scope.first) + ", ";
        ret += "}";
        return ret;
    }

    int parse(vector<string> &para) {
        for (auto &n : para) {
            // errs() << n << "\n";
            int pos = n.find(":");
            string key = n.substr(0, pos);
            string v = n.substr(pos + 2, string::npos);
            if (key == "tag") {tag = v; }
            if (key == "name") {name = v.substr(1, v.size() - 2); }
            if (key == "file") {file.first = str2int(v.substr(1, string::npos)); }
            if (key == "scope") {scope.first = str2int(v.substr(1, string::npos)); }
        }
        return 0;
    }
};

class DInfoDerive : public DInfo {
public:
    DInfoDerive() {typ = DInfo::derive;}
    DInfoDerive(int _id) {typ = DInfo::derive; id = _id;}
    string tag, name;
    InfoData file, scope, baseType;
    // DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5, file: !1, line: 7, baseType: !8, size: 32)
    void genPtr(map<int, DInfo *> *infos) {
        if (file.first != -1) file.second = (*infos)[file.first];
        if (scope.first != -1) scope.second = (*infos)[scope.first];
        if (baseType.first != -1) baseType.second = (*infos)[baseType.first];
    }
    string toString() {
        string ret =  " !" + int2str(id) + " = {" ;
        if (tag != "") ret += "tag: " + tag + ", ";
        if (name != "") ret += "name: " + name + ", ";
        if (file.first != -1) ret += "file: !" + int2str(file.first) + ", ";
        if (scope.first != -1) ret += "scope: !" + int2str(scope.first) + ", ";
        if (baseType.first != -1) ret += "baseType: !" + int2str(baseType.first) + ", ";
        ret += "}";
        return ret;
    }

    int parse(vector<string> &para) {
        for (auto &n : para) {
            // errs() << n << "\n";
            int pos = n.find(":");
            string key = n.substr(0, pos);
            string v = n.substr(pos + 2, string::npos);
            if (key == "tag") {tag = v; }
            if (key == "name") {name = v.substr(1, v.size() - 2); }
            if (key == "file") {file.first = str2int(v.substr(1, string::npos)); }
            if (key == "scope") {scope.first = str2int(v.substr(1, string::npos)); }
            if (key == "baseType") {baseType.first = str2int(v.substr(1, string::npos)); }
        }
        return 0;
    }
};

class DInfoBasic : public DInfo {
public:
    DInfoBasic() {typ = DInfo::basic;}
    DInfoBasic(int _id) {typ = DInfo::basic; id = _id;}
    string name;
    // !8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)

    string toString() {
        string ret =  " !" + int2str(id) + " = {" ;
        if (name != "") ret += "name: " + name + ", ";
        ret += "}";
        return ret;
    }

    int parse(vector<string> &para) {
        for (auto &n : para) {
            // errs() << n << "\n";
            int pos = n.find(":");
            string key = n.substr(0, pos);
            string v = n.substr(pos + 2, string::npos);
            if (key == "name") {name = v.substr(1, v.size() - 2); }
        }
        return 0;
    }
};

class DInfoNameSpace : public DInfo {
public:
    DInfoNameSpace() {typ = DInfo::nameSpace;}
    DInfoNameSpace(int _id) {typ = DInfo::nameSpace; id = _id;}
    string name;
    InfoData scope;

    // !15 = !DINamespace(name: "std", scope: null)
    // !8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
    void genPtr(map<int, DInfo *> *infos) {
        if (scope.first != -1) scope.second = (*infos)[scope.first];
    }
    string toString() {
        string ret =  " !" + int2str(id) + " = {" ;
        if (name != "") ret += "name: " + name + ", ";
        if (scope.first != -1) ret += "scope: !" + int2str(scope.first) + ", ";
        ret += "}";
        return ret;
    }

    int parse(vector<string> &para) {
        for (auto &n : para) {
            // errs() << n << "\n";
            int pos = n.find(":");
            string key = n.substr(0, pos);
            string v = n.substr(pos + 2, string::npos);
            if (key == "name") {name = v.substr(1, v.size() - 2); }
            if (key == "scope") {scope.first = str2int(v.substr(1, string::npos)); }
        }
        return 0;
    }
};


class DInfoFile : public DInfo {
public:
    DInfoFile() {typ = DInfo::file;}
    DInfoFile(int _id) {typ = DInfo::file; id = _id;}
    string filename, directory;


    // !15 = !DINamespace(name: "std", scope: null)
    // !8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)

    string toString() {
        string ret =  " !" + int2str(id) + " = {" ;
        if (filename != "") ret += "filename: " + filename + ", ";
        if (directory != "") ret += "directory: " + directory + ", ";
        ret += "}";
        return ret;
    }

    int parse(vector<string> &para) {
        for (auto &n : para) {
            // errs() << n << "\n";
            int pos = n.find(":");
            string key = n.substr(0, pos);
            string v = n.substr(pos + 2, string::npos);
            if (key == "filename") {filename = v.substr(1, v.size() - 2); }
            if (key == "directory") {directory = v.substr(1, v.size() - 2); }
        }
        return 0;
    }
};

class DebugParser {
public:
    void process(string path);
    vector<string> rawLines;
    map<int, DInfo *> infos;

};

#endif