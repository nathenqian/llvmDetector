#include "module_checker.h"
void qassert(bool s, string info = "") {
    if (!s) {
        errs() << "qssert error is " << info << "\n";
        exit(0);
    }

}
string extractNamespace(const string &id, const string &name) {
    if (id == name) 
        return "";
    return id.substr(0, id.size() - name.size() - 2);   
}

string extractClsName(const string &name) {
    qassert(name != "", "extractClsName error");
    int cnt = 0;

    for (int i = name.size() - 1; i >= 0; i --) {
        if (name[i] == ':' && cnt == 0) {
            return name;
        }
        if (name[i] == '>')
            cnt += 1;
        else
        if (name[i] == '<') {
            cnt -= 1;
            if (cnt == 0) {
                return name.substr(0, i);
            }
        }
        // errs() << name << " " << i << ' ' << cnt << "\n";
    }
    return name;
}

string extractTplate(const string &name) {
    // qassert(name != "", "extractClsName error");
    int cnt = 0;

    for (int i = name.size() - 1; i >= 0; i --) {
        if (name[i] == ':' && cnt == 0) {
            return "";
        }
        if (name[i] == '>')
            cnt += 1;
        else
        if (name[i] == '<') {
            cnt -= 1;
            if (cnt == 0) {
                return name.substr(i + 1, name.size() - (i + 1) - 1);
            }
        }
    }
    return "";
}

void ModuleChecker::insertClassInfo(string a, string b, string c, const DIType *d, bool e, bool f) {
    ClassInfo ci(a, b, c, d, e, f);
    if (ci.name != "") {
        errs() << ci.id << " / " << ci.clsName << " / " << ci.tplate << "\n";
        for (auto &i : mapClassInfo[ci.clsName]) {
            qassert(i.tplate != ci.tplate, "dup template and class: " + ci.id + " " + ci.clsName + " " + ci.tplate);
        }
        mapClassInfo[ci.clsName].push_back(ci);
    }
}


static string traceFullName(const DIScope *base) {
    string ret = "";
    while (1 == 1) {
        // if (isa<DIDerivedType>(base))  {
        //     // errs() << "DITypeSPACE" << "\n";
        //     const DIDerivedType *info = cast<DIDerivedType>(base);
        //     DIScopeRef scope = info->getScope();
        //     // qassert(scope.resolve() != NULL);
        //     if (scope.resolve() == NULL) {
        //         return "";
        //     } else 
        //         base = cast<DIType>(scope.resolve());
        // } else 
        // if (isa<DICompositeType>(base)) {
        //     // errs() << "DIComSPACE" << "\n";
        //     const DICompositeType *info = cast<DICompositeType>(base);
        //     DIScopeRef scope = info->getScope();
        //     // errs() << scope.resolve() << "\n";
        //     // qassert(scope.resolve() != NULL);
        //     if (scope.resolve() == NULL) {
        //         return "";
        //     } else 
        //         base = cast<DIType>(scope.resolve());      
        // } else 
        // errs() << "here" << "\n";
        if (isa<DIFile>(base)) {
            return "";
        } else
        if (isa<DINamespace>(base)) {
            // errs() << "DINameSPACE " << base->getName() << "\n";
            const DINamespace *info = cast<DINamespace>(base);
            DIScopeRef scope = info->getScope();
            // errs() << (scope.resolve()) << "\n";
            // qassert(scope.resolve() == NULL, "namespace scope must be null");
            if (scope.resolve() == NULL) {
                ret = base->getName().str() + "::" + ret;
                return ret;
            } else {
                qassert(ret != "", "namespace must have element name");
                ret = base->getName().str() + "::" + ret;
                base = cast<DIType>(scope.resolve());
            }
        } else {
            // const DICompositeType *info = cast<DICompositeType>(base);
            // errs() << "DINormal " << base->getName() << "\n";

            DIScopeRef scope = base->getScope();
            // errs() << scope << "\n";
            // errs() << scope.resolve() << "\n";
            // qassert(scope.resolve() != NULL);
            if (scope.resolve() == NULL) {
                if (ret == "") {
                    return base->getName().str();
                } else {
                    return base->getName().str() + "::" + ret;
                }
            } else  {
                // errs() << "cast start" << "\n";
                if (ret == "") {
                    ret = base->getName().str();
                } else {
                    ret = base->getName().str() + "::" + ret;
                }
                base = cast<DIType>(scope.resolve());     
                // errs() << "cast end " << base  << "\n";
            }
        }
    }
}
void ModuleChecker::processType(Module &m) {
    dif.processModule(m);
    auto x = dif.types();
    int maxi = 0;
    for (auto i = x.begin(), e = x.end(); i != e; ++i) {
        const DIType *base = *i;
        if (isa<DIBasicType>(base)) {
            string name = base->getName();
            // ClassInfo ci(name, "", name, base, false, true);
            // errs() << "basic type : " << name << "\n";
        } else
        if (isa<DIDerivedType>(base))  {
            // errs() << base << "\n";
            // const DIDerivedType *info = cast<DIDerivedType>(base);
            // string name = info->getName().str();
            // errs() << "derivedtype type : " << name << "\n";
            // string namesp = traceNameSpace(base);
            // string id = combineNameSpaceId(namesp, name);
            // errs() << id << "\n";
            // if (name != "") {
            //     ClassInfo ci(name, namesp, id, base, true, false);
            //     // qassert(mapClassInfo.find(id) == mapClassInfo.end(), "mapClassInfo find duplicate " + id);
            //     if (mapClassInfo.find(id) == mapClassInfo.end()) {
            //         ci.cnt = 1;
            //         mapClassInfo[id] = ci;
            //     } else {
            //         mapClassInfo[id].cnt += 1;
            //         maxi = max(maxi, mapClassInfo[id].cnt);
            //     }
            // }
            // errs() << "derivedtype : " << id << "\n";
        } else 
        if (isa<DICompositeType>(base)) {
            const DICompositeType *info = cast<DICompositeType>(base);
            string name = info->getName().str();
            errs() << "composite type : " << name << "\n";
            
            string id = traceFullName(base);
            string namesp = extractNamespace(name, id);
            insertClassInfo(name, namesp, id, base, false, true);
            // if (name != "") {
            //     insertClassInfo(name, namesp, id, base, false, true);
                // qassert(mapClassInfo.find(id) == mapClassInfo.end(), "mapClassInfo find duplicate" + id);
                // mapClassInfo[id] = ci;
                // if (mapClassInfo.find(id) == mapClassInfo.end()) {
                //     ci.cnt = 1;
                //     mapClassInfo[id] = ci;
                // } else {
                //     mapClassInfo[id].cnt += 1;
                //     maxi = max(maxi, mapClassInfo[id].cnt);
                // }
                // errs() << "composite type : " << id  << "\n";
            // }
            
        }
    }
    errs() << "cnt = " << maxi << "\n";
    // exit(0);
}

QueryResult ModuleChecker::query(string &rawName) {
    string name = rawName;
    qassert(name != "", "query error");
    int index = name.size() - 1;
    while (index >= 0 && name[index] != '.')
        index --;
    if (index != -1) {
        bool allDigit = true;
        for (int i = index + 1; i < name.size(); i ++)
            if (!(name[i] >= '0' && name[i] <= '9')) {
                allDigit = false;
                break;
            }
        if (allDigit) {
            name = name.substr(0, index);
        }
    }

    errs() << "\t\ttry query " << name << "\n";

    if (mapClassInfo.find(name) == mapClassInfo.end()) {
        errs() << "cant find " << name << "\n";
    }
    QueryResult q;
    return q;
}

void ModuleChecker::printType() {

}