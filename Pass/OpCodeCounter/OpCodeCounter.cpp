#include <iostream> // for use cout, endl
#include <fstream>  // for use read txt file

#include "llvm/IR/Function.h"
#include "llvm/Pass.h"

#include "llvm/Support/raw_ostream.h" // write_escaped

#include "llvm/CodeGen/AsmPrinter.h"  // not use


#include <map>
using namespace llvm;

#define DEBUG_TYPE "opcodeCounter"

int totalCount = 1;

namespace {
struct CountOpcode : public FunctionPass {
  std::map<std::string, int> opcodeCounter;
  static char ID;
  CountOpcode() : FunctionPass(ID) {}
  virtual bool runOnFunction(Function &F) {
    llvm::outs() << "Function " << F.getName() << '\n';
    for (Function::iterator bb = F.begin(), e = F.end(); bb != e; ++bb) 
    {
      std::cout << "start --------------------\n";
      for (BasicBlock::iterator i = bb->begin(), e = bb->end(); i != e; ++i) 
      {
        std::cout << "basic start @@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";
        
        //llvm::outs() << F.getName() << " , ";
        std::cout << "totalCount :  " << totalCount ++ << "\n" ;

      

        if (opcodeCounter.find(i->getOpcodeName()) == opcodeCounter.end()) 
        {
          opcodeCounter[i->getOpcodeName()] = 1;
          llvm::outs() << "New opcodeName is : " << i->getOpcodeName() << "\n";
          errs().write_escaped("------aaaa") << '\n';
        } 
        else 
        {
          opcodeCounter[i->getOpcodeName()] += 1;
          //llvm::outs() << "opcodeName is : " << opcodeCounter[i->getOpcodeName()] << "\n\n";
          llvm::outs() << "Old opcodeName is : " << i->getOpcodeName() << "\n";
          //llvm::outs() << 
        }

        std::cout << "basic end @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n";
      }
      std::cout << "end --------------------\n";
    }
    std::map<std::string, int>::iterator i = opcodeCounter.begin();
    std::map<std::string, int>::iterator e = opcodeCounter.end();

    std::cout << "\n\norign\n";
    while (i != e) {
      llvm::outs() << i->first << ": " << i->second << "\n";
      i++;
    }
    llvm::outs() << "\n";
    opcodeCounter.clear();
    return false;
  }
};
} // namespace
char CountOpcode::ID = 0;
static RegisterPass<CountOpcode> X("opcodeCounter", "Count number of opcode in a functions");

// 함수 들어있는 모든 키워드를 통계낼 수 있다
// 