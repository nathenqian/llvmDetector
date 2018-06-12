; ModuleID = 'h.cpp'
source_filename = "h.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.TypeA = type { i32*, i32* }
%class.TypeC = type <{ %class.TypeA, i32, [4 x i8] }>
%class.TypeB = type { %class.TypeA*, [10 x %class.TypeA*] }

; Function Attrs: noinline norecurse nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %class.TypeA, align 8
  %3 = alloca %class.TypeC, align 8
  %4 = alloca %class.TypeB, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.TypeA*, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast %class.TypeC* %3 to %class.TypeA*
  %8 = getelementptr inbounds %class.TypeB, %class.TypeB* %4, i32 0, i32 0
  store %class.TypeA* %7, %class.TypeA** %8, align 8
  %9 = getelementptr inbounds %class.TypeB, %class.TypeB* %4, i32 0, i32 1
  %10 = getelementptr inbounds [10 x %class.TypeA*], [10 x %class.TypeA*]* %9, i64 0, i64 0
  store %class.TypeA* %2, %class.TypeA** %10, align 8
  %11 = getelementptr inbounds %class.TypeB, %class.TypeB* %4, i32 0, i32 0
  %12 = load %class.TypeA*, %class.TypeA** %11, align 8
  store %class.TypeA* %12, %class.TypeA** %6, align 8
  %13 = getelementptr inbounds %class.TypeB, %class.TypeB* %4, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x %class.TypeA*], [10 x %class.TypeA*]* %13, i64 0, i64 %15
  %17 = load %class.TypeA*, %class.TypeA** %16, align 8
  store %class.TypeA* %17, %class.TypeA** %6, align 8
  ret i32 0
}

attributes #0 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.1 (tags/RELEASE_501/final 322011)"}
