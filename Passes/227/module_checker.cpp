#include "module_checker.h"
void qassert(bool s, string info = "") {
    if (!s) {
        errs() << "qssert error is " << info << "\n";
        exit(0);
    }

}
string combineNameSpaceId(const string &namesp, const string &id) {
    if (namesp == "")
        return id;
    else
        return namesp + "::" + id;
}

static string traceNameSpace(const DIScope *base) {
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
            // errs() << "DINameSPACE" << "\n";
            const DINamespace *info = cast<DINamespace>(base);
            DIScopeRef scope = info->getScope();
            // assert(scope != NULL);
            if (scope.resolve() == NULL) {
                return info->getName().str();
            } else 
                base = cast<DIType>(scope.resolve());
        } else {
            // const DICompositeType *info = cast<DICompositeType>(base);
            // errs() << "DINormal " << base->getName() << "\n";

            DIScopeRef scope = base->getScope();
            // errs() << scope << "\n";
            // errs() << scope.resolve() << "\n";
            // qassert(scope.resolve() != NULL);
            if (scope.resolve() == NULL) {
                return "";
            } else  {
                // errs() << "cast start" << "\n";
                base = cast<DIType>(scope.resolve());     
                // errs() << "cast end " << base  << "\n";
            }
        }
    }
}
void ModuleChecker::processType(Module &m) {
    dif.processModule(m);
    auto x = dif.types();
    for (auto i = x.begin(), e = x.end(); i != e; ++i) {
        const DIType *base = *i;
        if (isa<DIBasicType>(base)) {

        } else
        if (isa<DIDerivedType>(base))  {
            // errs() << base << "\n";
            const DIDerivedType *info = cast<DIDerivedType>(base);
            string name = info->getName().str();
            // errs() << "derivedtype type : " << name << "\n";
            string namesp = traceNameSpace(base);
            string id = combineNameSpaceId(namesp, name);
            errs() << "derivedtype : " << id << "\n";
        } else 
        if (isa<DICompositeType>(base)) {
            const DICompositeType *info = cast<DICompositeType>(base);
            string name = info->getName().str();
            // errs() << "composite type : " << name << "\n";
            string namesp = traceNameSpace(base);
            string id = combineNameSpaceId(namesp, name);
            errs() << "composite type : " << id << "\n";
        }
    }
}

void ModuleChecker::printType() {

}