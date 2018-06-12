opt -load /LLVM_ROOT/build/lib/CSE231.so -cse227 < b.ll > /dev/null 2>debugb.ll 

opt -load /LLVM_ROOT/build/lib/CSE231.so -CastAnalysis < b.ll > /dev/null 2>debugb.ll 
