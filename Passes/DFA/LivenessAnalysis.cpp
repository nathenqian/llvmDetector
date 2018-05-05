#include "231DFA.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include <set>
using namespace llvm;
using namespace std;

class LivenessInfo : public Info {
public:
    std::set<unsigned int> data;

    void print() {
        for (auto i : data)
            errs() << i << "|";
        errs() << "\n";
    }
    LivenessInfo() {}
    LivenessInfo(LivenessInfo *a) {
        data = a->data;
    }
    static bool equals(LivenessInfo * info1, LivenessInfo * info2) {
        return info1->data == info2->data;
    }
    static LivenessInfo* join(LivenessInfo *info1, LivenessInfo *info2, LivenessInfo *ret) {
        if (info1 != ret)
        for (auto i : info1->data)
            ret->data.insert(i);
        if (info2 != ret)
        for (auto i : info2->data)
            ret->data.insert(i);
        return NULL;
    }
    void addData(unsigned int x) {
        if (x == 0) return;
        data.insert(x);
    }
    void removeData(unsigned int x) {
        data.erase(x);
    }
};


class LivenessAnalysis : public DataFlowAnalysis<LivenessInfo, false> {
public:
    LivenessAnalysis(LivenessInfo & bottom, LivenessInfo & initialState) : 
            DataFlowAnalysis(bottom, initialState) {}

    map<string, int> category = {{"alloca", 1}, {"load", 1}, {"select", 1},
                                         {"icmp", 1}, {"fcmp", 1}, {"getelementptr", 1},
                                         {"br", 2}, {"switch", 2}, {"store", 2}, {"phi", 3}};

    #define getDef(i) (dyn_cast<Instruction>(i))



    void flowfunction(Instruction * I, std::vector<unsigned> & IncomingEdges, 
        std::vector<unsigned> & OutgoingEdges, std::vector<LivenessInfo *> & Infos) {

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
        LivenessInfo *retInfo = new LivenessInfo();
        for (auto i : IncomingEdges) {
            LivenessInfo::join(EdgeToInfo[make_pair(i, instIndex)] , retInfo, retInfo);
        }


        if (cate == 1) {
            Instruction *defInst = getDef(I);
            retInfo->removeData(InstrToIndex[defInst]);
        } 
        if (cate == 1 || cate == 2) {
            for (unsigned i = 0; i < I->getNumOperands(); i ++) {
                Instruction *inst =  getDef(I->getOperand(i));
                if (InstrToIndex.count(inst) != 0)
                    retInfo->addData(InstrToIndex[inst]);
            }
        }
        if (cate == 3) {
            // errs() << "here" << "\n";
            for (size_t i = 0; i < OutgoingEdges.size(); i ++) {
                Infos.push_back(new LivenessInfo(retInfo));
            }
            BasicBlock * block = I->getParent();
            // printf("here");
            // errs() << "here" << "\n";
            for (auto ii = block->begin(); &(*ii) != block->getFirstNonPHI(); ++ii) {
                // errs() << (*ii).getOpcodeName() << ' ' << isa<PHINode>(&*ii) << "\n";
                // errs() << ii << ' ' << block->getFirstNonPHI() << "\n";
                PHINode *pnd = dyn_cast<PHINode>(&*ii);
                // errs() << (*ii).getOpcodeName() << ' ' << isa<PHINode>(&*ii) << "\n";
                for (size_t i = 0; i < OutgoingEdges.size(); i ++)
                    Infos[i]->removeData(InstrToIndex[pnd]);
                // errs() << pnd->getNumIncomingValues() << "\n";
                for (size_t i = 0; i < pnd->getNumIncomingValues(); i ++) {
                    Instruction *inst = getDef(pnd->getIncomingValue(i));
                    // errs() << "fd" << "\n";
                    // if (inst == NULL) {
                        // errs() << "con\n";
                        // continue;
                    // }
                    for (size_t j = 0; j < OutgoingEdges.size(); j ++) {
                        // errs() << (InstrToIndex.count(inst) != 0) << ' ' << (inst->getParent()) << ' ' << (IndexToInstr[OutgoingEdges[j]]->getParent()) << "\n";
                        // errs() << inst << "\n";
                        if (InstrToIndex[inst] == 0) continue;
                        // errs() << InstrToIndex[inst] << "\n";
                        // errs() << pnd->getIncomingBlock(i)<<' '<< IndexToInstr[OutgoingEdges[j]]->getParent()<<' '<<InstrToIndex[inst]<<"\n";
                        // errs() << (pnd->getIncomingBlock(i) == IndexToInstr[OutgoingEdges[j]]->getParent())<<"\n";
                        if (pnd->getIncomingBlock(i) == IndexToInstr[OutgoingEdges[j]]->getParent())
                            Infos[j]->addData(InstrToIndex[inst]);
                    }
                }
                // errs()<<"fin"<<"\n";
            }
        } else {
            for (size_t i = 0; i < OutgoingEdges.size(); i ++)
                Infos.push_back(retInfo);
        }
    }

};


namespace {
    struct LivenessAnalysisPass : public FunctionPass {
        static char ID;
        LivenessAnalysisPass() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            LivenessInfo bottom;
            LivenessInfo initialState;
            LivenessAnalysis * main = new LivenessAnalysis(bottom, initialState);
            // errs() << "-----------------------------------------------\n";
            main->runWorklistAlgorithm(&F);
            main->print();

            return false;
        }
    }; 
}  

char LivenessAnalysisPass::ID = 5;
static RegisterPass<LivenessAnalysisPass> X("cse231-liveness", "5",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);