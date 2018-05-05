#include "231DFA.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include <set>
using namespace llvm;
using namespace std;

class ReachingInfo : public Info {
public:
    std::set<unsigned int> data;

    void print() {
        for (auto i : data)
            errs() << i << "|";
        errs() << "\n";
    }
    static bool equals(ReachingInfo * info1, ReachingInfo * info2) {
        return info1->data == info2->data;
    }
    static ReachingInfo* join(ReachingInfo *info1, ReachingInfo *info2, ReachingInfo *ret) {
        if (info1 != ret)
        for (auto i : info1->data)
            ret->data.insert(i);
        if (info2 != ret)
        for (auto i : info2->data)
            ret->data.insert(i);
        return NULL;
    }
    void addData(unsigned int x) {
        data.insert(x);
    }
};


class ReachingDefinitionAnalysis : public DataFlowAnalysis<ReachingInfo, true> {
public:
    ReachingDefinitionAnalysis(ReachingInfo & bottom, ReachingInfo & initialState) : 
            DataFlowAnalysis(bottom, initialState) {}

    map<string, int> category = {{"alloca", 1}, {"load", 1}, {"select", 1},
                                         {"icmp", 1}, {"fcmp", 1}, {"getelementptr", 1},
                                         {"br", 2}, {"switch", 2}, {"store", 2}, {"phi", 3}};

    void flowfunction(Instruction * I, std::vector<unsigned> & IncomingEdges, 
        std::vector<unsigned> & OutgoingEdges, std::vector<ReachingInfo *> & Infos) {

        string op = I->getOpcodeName();

        int cate;
        if (I->isBinaryOp() || I->isBitwiseLogicOp()) {
            cate = 1;
        } else
        if (category[op] != 0)
            cate = category[op];
        else
            cate = 2;

        int instIndex = InstrToIndex[I];
        // errs() << instIndex <<  " " << cate << "\n";
        ReachingInfo *retInfo = new ReachingInfo();
        for (auto i : IncomingEdges) {
            ReachingInfo::join(EdgeToInfo[make_pair(i, instIndex)] , retInfo, retInfo);
        }


        if (cate == 1) {
            retInfo->addData(instIndex);
        } else
        if (cate == 3) {
            Instruction *firstNonPhi = I->getParent()->getFirstNonPHI();
            for (unsigned int id = instIndex; id < InstrToIndex[firstNonPhi]; id ++)
                retInfo->addData(instIndex);
        }
        for (size_t i = 0; i < OutgoingEdges.size(); i ++)
            Infos.push_back(retInfo);

    }

};


namespace {
    struct ReachingDefinitionAnalysisPass : public FunctionPass {
        static char ID;
        ReachingDefinitionAnalysisPass() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            ReachingInfo bottom;
            ReachingInfo initialState;
            ReachingDefinitionAnalysis * main = new ReachingDefinitionAnalysis(bottom, initialState);
            // errs() << "-----------------------------------------------\n";
            main->runWorklistAlgorithm(&F);
            main->print();

            return false;
        }
    }; 
}  

char ReachingDefinitionAnalysisPass::ID = 4;
static RegisterPass<ReachingDefinitionAnalysisPass> X("cse231-reaching", "4",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);