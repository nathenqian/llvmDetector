path=`pwd`/*.ll
ALL='all'
for file in $path;
do
    x=$(basename "$file")
    #if [[ -f $file ]]; then
    echo "running " $x
    # echo $1 $ALL
    if [ "x$1" = "x$ALL" ];
    then
        # echo "true"
        opt -load /LLVM_ROOT/build/lib/CSE231.so -cse227-pre < $x > /dev/null 2> stat/$x.txt
    else
        if [ ! -f result/$x.txt ]; then
            opt -load /LLVM_ROOT/build/lib/CSE231.so -cse227-pre < $x > /dev/null 2> stat/$x.txt
        fi        
    fi
    #fi
done
