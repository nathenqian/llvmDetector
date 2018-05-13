path=`pwd`/*
for file in $path;
do
    x=$(basename "$file")
    #if [[ -f $file ]]; then
    echo "running" $x
    opt -load /LLVM_ROOT/build/lib/CSE231.so -cse227 < $x > /dev/null 2> result/$x.txt
    #fi
done
