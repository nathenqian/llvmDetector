; ModuleID = 'f2.cpp'
source_filename = "f2.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.A = type <{ i32 (...)**, i32, [4 x i8] }>
%class.B = type { %class.A.base, [4 x i8] }
%class.A.base = type <{ i32 (...)**, i32 }>

$_ZN1AC2Ev = comdat any

$_ZN1BC2Ev = comdat any

$_ZN1A1fEPS_S0_ = comdat any

$_ZN1B1fEP1AS1_ = comdat any

$_ZTV1A = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTV1B = comdat any

$_ZTS1B = comdat any

$_ZTI1B = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZTV1A = linkonce_odr unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i8* bitcast (i32 (%class.A*, %class.A*, %class.A*)* @_ZN1A1fEPS_S0_ to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS1A = linkonce_odr constant [3 x i8] c"1A\00", comdat
@_ZTI1A = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) }, comdat
@_ZTV1B = linkonce_odr unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1B to i8*), i8* bitcast (i32 (%class.B*, %class.A*, %class.A*)* @_ZN1B1fEP1AS1_ to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS1B = linkonce_odr constant [3 x i8] c"1B\00", comdat
@_ZTI1B = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1B, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %class.A, align 8
  %3 = alloca %class.A, align 8
  %4 = alloca %class.A, align 8
  %5 = alloca %class.B, align 8
  %6 = alloca %class.A*, align 8
  store i32 0, i32* %1, align 4
  call void @_ZN1AC2Ev(%class.A* %2) #3
  call void @_ZN1AC2Ev(%class.A* %3) #3
  call void @_ZN1AC2Ev(%class.A* %4) #3
  call void @_ZN1BC2Ev(%class.B* %5) #3
  %7 = bitcast %class.B* %5 to %class.A*
  store %class.A* %7, %class.A** %6, align 8
  %8 = load %class.A*, %class.A** %6, align 8
  %9 = bitcast %class.A* %8 to i32 (%class.A*, %class.A*, %class.A*)***
  %10 = load i32 (%class.A*, %class.A*, %class.A*)**, i32 (%class.A*, %class.A*, %class.A*)*** %9, align 8
  %11 = getelementptr inbounds i32 (%class.A*, %class.A*, %class.A*)*, i32 (%class.A*, %class.A*, %class.A*)** %10, i64 0
  %12 = load i32 (%class.A*, %class.A*, %class.A*)*, i32 (%class.A*, %class.A*, %class.A*)** %11, align 8
  %13 = call i32 %12(%class.A* %8, %class.A* %2, %class.A* %3)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %13)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN1AC2Ev(%class.A*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %2, align 8
  %3 = load %class.A*, %class.A** %2, align 8
  %4 = bitcast %class.A* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN1BC2Ev(%class.B*) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.B*, align 8
  store %class.B* %0, %class.B** %2, align 8
  %3 = load %class.B*, %class.B** %2, align 8
  %4 = bitcast %class.B* %3 to %class.A*
  call void @_ZN1AC2Ev(%class.A* %4) #3
  %5 = bitcast %class.B* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1B, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i32 @_ZN1A1fEPS_S0_(%class.A*, %class.A*, %class.A*) unnamed_addr #1 comdat align 2 {
  %4 = alloca %class.A*, align 8
  %5 = alloca %class.A*, align 8
  %6 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %4, align 8
  store %class.A* %1, %class.A** %5, align 8
  store %class.A* %2, %class.A** %6, align 8
  %7 = load %class.A*, %class.A** %4, align 8
  %8 = load %class.A*, %class.A** %5, align 8
  %9 = getelementptr inbounds %class.A, %class.A* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i32 @_ZN1B1fEP1AS1_(%class.B*, %class.A*, %class.A*) unnamed_addr #1 comdat align 2 {
  %4 = alloca %class.B*, align 8
  %5 = alloca %class.A*, align 8
  %6 = alloca %class.A*, align 8
  store %class.B* %0, %class.B** %4, align 8
  store %class.A* %1, %class.A** %5, align 8
  store %class.A* %2, %class.A** %6, align 8
  %7 = load %class.B*, %class.B** %4, align 8
  %8 = load %class.A*, %class.A** %6, align 8
  %9 = getelementptr inbounds %class.A, %class.A* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  ret i32 %10
}

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.1 (tags/RELEASE_501/final 322011)"}
