; ModuleID = 'a.cpp'
source_filename = "a.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.A = type { i32 (...)**, i32, i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.mspace::A" = type { i32 (...)**, i32, i32, %"class.std::vector" }
%"class.mspace::D" = type <{ %"class.mspace::A", %"class.mspace::C", [4 x i8] }>
%"class.mspace::C" = type { i32 }
%"class.mspace::B" = type <{ %"class.mspace::A", %"class.mspace::C", [4 x i8] }>
%class.D = type <{ %class.A, %class.C, [4 x i8] }>
%class.C = type { i32 }
%class.B = type <{ %class.A, %class.C, [4 x i8] }>
%class.ZX = type { i32 }
%class.STDClass = type { i32 }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

$_ZN1A4testEv = comdat any

$_ZN6mspace1AC2Ev = comdat any

$_ZN6mspace1DC2Ev = comdat any

$_ZN6mspace1BC2Ev = comdat any

$_ZN6mspace1B5testbEv = comdat any

$_ZN6mspace1B5nimasEv = comdat any

$_ZN6mspace1BD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6mspace1DD2Ev = comdat any

$_ZN6mspace1AD2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZN1DC2Ev = comdat any

$_ZN1BC2Ev = comdat any

$_ZN2ZX4testEv = comdat any

$_ZN1B5testbEv = comdat any

$_ZN1B5nimasEv = comdat any

$_ZN1BD2Ev = comdat any

$_ZN1DD2Ev = comdat any

$_ZN1AD2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZN6mspace1A5nimasEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZN1A5nimasEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_ = comdat any

$_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi = comdat any

$_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_ = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_ = comdat any

$_ZSt4copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi = comdat any

$_ZTVN6mspace1AE = comdat any

$_ZTSN6mspace1AE = comdat any

$_ZTIN6mspace1AE = comdat any

$_ZTVN6mspace1BE = comdat any

$_ZTSN6mspace1BE = comdat any

$_ZTSN6mspace1CE = comdat any

$_ZTIN6mspace1CE = comdat any

$_ZTIN6mspace1BE = comdat any

$_ZTV1A = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTV1B = comdat any

$_ZTS1B = comdat any

$_ZTS1C = comdat any

$_ZTI1C = comdat any

$_ZTI1B = comdat any

@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@_ZTVN6mspace1AE = linkonce_odr unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6mspace1AE to i8*), i8* bitcast (void (%"class.mspace::A"*)* @_ZN6mspace1A5nimasEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN6mspace1AE = linkonce_odr constant [12 x i8] c"N6mspace1AE\00", comdat
@_ZTIN6mspace1AE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTSN6mspace1AE, i32 0, i32 0) }, comdat
@.str.1 = private unnamed_addr constant [8 x i8] c"caonima\00", align 1
@_ZTVN6mspace1BE = linkonce_odr unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTIN6mspace1BE to i8*), i8* bitcast (void (%"class.mspace::B"*)* @_ZN6mspace1B5nimasEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTSN6mspace1BE = linkonce_odr constant [12 x i8] c"N6mspace1BE\00", comdat
@_ZTSN6mspace1CE = linkonce_odr constant [12 x i8] c"N6mspace1CE\00", comdat
@_ZTIN6mspace1CE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTSN6mspace1CE, i32 0, i32 0) }, comdat
@_ZTIN6mspace1BE = linkonce_odr constant { i8*, i8*, i32, i32, i8*, i64, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTSN6mspace1BE, i32 0, i32 0), i32 0, i32 2, i8* bitcast ({ i8*, i8* }* @_ZTIN6mspace1AE to i8*), i64 2, i8* bitcast ({ i8*, i8* }* @_ZTIN6mspace1CE to i8*), i64 10240 }, comdat
@.str.2 = private unnamed_addr constant [11 x i8] c"caonima666\00", align 1
@_ZTV1A = linkonce_odr unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i8* bitcast (void (%class.A*)* @_ZN1A5nimasEv to i8*)] }, comdat, align 8
@_ZTS1A = linkonce_odr constant [3 x i8] c"1A\00", comdat
@_ZTI1A = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) }, comdat
@_ZTV1B = linkonce_odr unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTI1B to i8*), i8* bitcast (void (%class.B*)* @_ZN1B5nimasEv to i8*)] }, comdat, align 8
@_ZTS1B = linkonce_odr constant [3 x i8] c"1B\00", comdat
@_ZTS1C = linkonce_odr constant [3 x i8] c"1C\00", comdat
@_ZTI1C = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1C, i32 0, i32 0) }, comdat
@_ZTI1B = linkonce_odr constant { i8*, i8*, i32, i32, i8*, i64, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1B, i32 0, i32 0), i32 0, i32 2, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i64 2, i8* bitcast ({ i8*, i8* }* @_ZTI1C to i8*), i64 10240 }, comdat
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1

; Function Attrs: noinline optnone uwtable
define void @_Z4testR1A(%class.A* dereferenceable(40)) #0 !dbg !636 {
  %2 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %2, align 8
  call void @llvm.dbg.declare(metadata %class.A** %2, metadata !640, metadata !641), !dbg !642
  %3 = load %class.A*, %class.A** %2, align 8, !dbg !643
  call void @_ZN1A4testEv(%class.A* %3), !dbg !644
  ret void, !dbg !645
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1A4testEv(%class.A*) #0 comdat align 2 !dbg !646 {
  %2 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %2, align 8
  call void @llvm.dbg.declare(metadata %class.A** %2, metadata !647, metadata !641), !dbg !648
  %3 = load %class.A*, %class.A** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline optnone uwtable
define void @_Z5testsv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !651 {
  %1 = alloca %"class.mspace::A", align 8
  %2 = alloca %"class.mspace::D", align 8
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %"class.mspace::B", align 8
  %6 = alloca %"class.mspace::B"*, align 8
  %7 = alloca %"class.mspace::B"*, align 8
  %8 = alloca %"class.mspace::A"*, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::A"* %1, metadata !654, metadata !641), !dbg !655
  call void @_ZN6mspace1AC2Ev(%"class.mspace::A"* %1), !dbg !655
  call void @llvm.dbg.declare(metadata %"class.mspace::D"* %2, metadata !656, metadata !641), !dbg !661
  invoke void @_ZN6mspace1DC2Ev(%"class.mspace::D"* %2)
          to label %9 unwind label %20, !dbg !661

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %"class.mspace::B"* %5, metadata !662, metadata !641), !dbg !663
  invoke void @_ZN6mspace1BC2Ev(%"class.mspace::B"* %5)
          to label %10 unwind label %24, !dbg !663

; <label>:10:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %"class.mspace::B"** %6, metadata !664, metadata !641), !dbg !665
  %11 = bitcast %"class.mspace::A"* %1 to %"class.mspace::B"*, !dbg !666
  store %"class.mspace::B"* %11, %"class.mspace::B"** %6, align 8, !dbg !665
  call void @llvm.dbg.declare(metadata %"class.mspace::B"** %7, metadata !667, metadata !641), !dbg !668
  %12 = bitcast %"class.mspace::D"* %2 to %"class.mspace::B"*, !dbg !669
  store %"class.mspace::B"* %12, %"class.mspace::B"** %7, align 8, !dbg !668
  %13 = load %"class.mspace::B"*, %"class.mspace::B"** %6, align 8, !dbg !670
  invoke void @_ZN6mspace1B5testbEv(%"class.mspace::B"* %13)
          to label %14 unwind label %28, !dbg !671

; <label>:14:                                     ; preds = %10
  invoke void @_ZN6mspace1B5nimasEv(%"class.mspace::B"* %5)
          to label %15 unwind label %28, !dbg !672

; <label>:15:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %"class.mspace::A"** %8, metadata !673, metadata !641), !dbg !674
  %16 = load %"class.mspace::B"*, %"class.mspace::B"** %6, align 8, !dbg !675
  %17 = bitcast %"class.mspace::B"* %16 to %"class.mspace::A"*, !dbg !675
  store %"class.mspace::A"* %17, %"class.mspace::A"** %8, align 8, !dbg !674
  invoke void @_ZN6mspace1BD2Ev(%"class.mspace::B"* %5)
          to label %18 unwind label %24, !dbg !676

; <label>:18:                                     ; preds = %15
  invoke void @_ZN6mspace1DD2Ev(%"class.mspace::D"* %2)
          to label %19 unwind label %20, !dbg !676

; <label>:19:                                     ; preds = %18
  call void @_ZN6mspace1AD2Ev(%"class.mspace::A"* %1), !dbg !676
  ret void, !dbg !676

; <label>:20:                                     ; preds = %18, %0
  %21 = landingpad { i8*, i32 }
          cleanup, !dbg !676
  %22 = extractvalue { i8*, i32 } %21, 0, !dbg !676
  store i8* %22, i8** %3, align 8, !dbg !676
  %23 = extractvalue { i8*, i32 } %21, 1, !dbg !676
  store i32 %23, i32* %4, align 4, !dbg !676
  br label %35, !dbg !676

; <label>:24:                                     ; preds = %15, %9
  %25 = landingpad { i8*, i32 }
          cleanup, !dbg !676
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !676
  store i8* %26, i8** %3, align 8, !dbg !676
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !676
  store i32 %27, i32* %4, align 4, !dbg !676
  br label %33, !dbg !676

; <label>:28:                                     ; preds = %14, %10
  %29 = landingpad { i8*, i32 }
          cleanup, !dbg !676
  %30 = extractvalue { i8*, i32 } %29, 0, !dbg !676
  store i8* %30, i8** %3, align 8, !dbg !676
  %31 = extractvalue { i8*, i32 } %29, 1, !dbg !676
  store i32 %31, i32* %4, align 4, !dbg !676
  invoke void @_ZN6mspace1BD2Ev(%"class.mspace::B"* %5)
          to label %32 unwind label %42, !dbg !676

; <label>:32:                                     ; preds = %28
  br label %33, !dbg !676

; <label>:33:                                     ; preds = %32, %24
  invoke void @_ZN6mspace1DD2Ev(%"class.mspace::D"* %2)
          to label %34 unwind label %42, !dbg !676

; <label>:34:                                     ; preds = %33
  br label %35, !dbg !676

; <label>:35:                                     ; preds = %34, %20
  invoke void @_ZN6mspace1AD2Ev(%"class.mspace::A"* %1)
          to label %36 unwind label %42, !dbg !676

; <label>:36:                                     ; preds = %35
  br label %37, !dbg !676

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %3, align 8, !dbg !676
  %39 = load i32, i32* %4, align 4, !dbg !676
  %40 = insertvalue { i8*, i32 } undef, i8* %38, 0, !dbg !676
  %41 = insertvalue { i8*, i32 } %40, i32 %39, 1, !dbg !676
  resume { i8*, i32 } %41, !dbg !676

; <label>:42:                                     ; preds = %35, %33, %28
  %43 = landingpad { i8*, i32 }
          catch i8* null, !dbg !676
  %44 = extractvalue { i8*, i32 } %43, 0, !dbg !676
  call void @__clang_call_terminate(i8* %44) #10, !dbg !676
  unreachable, !dbg !676
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1AC2Ev(%"class.mspace::A"*) unnamed_addr #0 comdat align 2 !dbg !677 {
  %2 = alloca %"class.mspace::A"*, align 8
  store %"class.mspace::A"* %0, %"class.mspace::A"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::A"** %2, metadata !679, metadata !641), !dbg !680
  %3 = load %"class.mspace::A"*, %"class.mspace::A"** %2, align 8
  %4 = bitcast %"class.mspace::A"* %3 to i32 (...)***, !dbg !681
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6mspace1AE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8, !dbg !681
  %5 = getelementptr inbounds %"class.mspace::A", %"class.mspace::A"* %3, i32 0, i32 3, !dbg !681
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %5), !dbg !681
  ret void, !dbg !681
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1DC2Ev(%"class.mspace::D"*) unnamed_addr #0 comdat align 2 !dbg !682 {
  %2 = alloca %"class.mspace::D"*, align 8
  store %"class.mspace::D"* %0, %"class.mspace::D"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::D"** %2, metadata !687, metadata !641), !dbg !689
  %3 = load %"class.mspace::D"*, %"class.mspace::D"** %2, align 8
  %4 = getelementptr inbounds %"class.mspace::D", %"class.mspace::D"* %3, i32 0, i32 0, !dbg !690
  call void @_ZN6mspace1AC2Ev(%"class.mspace::A"* %4), !dbg !690
  %5 = getelementptr inbounds %"class.mspace::D", %"class.mspace::D"* %3, i32 0, i32 1, !dbg !690
  ret void, !dbg !690
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1BC2Ev(%"class.mspace::B"*) unnamed_addr #0 comdat align 2 !dbg !691 {
  %2 = alloca %"class.mspace::B"*, align 8
  store %"class.mspace::B"* %0, %"class.mspace::B"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::B"** %2, metadata !693, metadata !641), !dbg !694
  %3 = load %"class.mspace::B"*, %"class.mspace::B"** %2, align 8
  %4 = bitcast %"class.mspace::B"* %3 to %"class.mspace::A"*, !dbg !695
  call void @_ZN6mspace1AC2Ev(%"class.mspace::A"* %4), !dbg !695
  %5 = bitcast %"class.mspace::B"* %3 to i8*, !dbg !695
  %6 = getelementptr inbounds i8, i8* %5, i64 40, !dbg !695
  %7 = bitcast i8* %6 to %"class.mspace::C"*, !dbg !695
  %8 = bitcast %"class.mspace::B"* %3 to i32 (...)***, !dbg !695
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6mspace1BE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8, !dbg !695
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN6mspace1B5testbEv(%"class.mspace::B"*) #2 comdat align 2 !dbg !696 {
  %2 = alloca %"class.mspace::B"*, align 8
  store %"class.mspace::B"* %0, %"class.mspace::B"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::B"** %2, metadata !697, metadata !641), !dbg !698
  %3 = load %"class.mspace::B"*, %"class.mspace::B"** %2, align 8
  ret void, !dbg !699
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1B5nimasEv(%"class.mspace::B"*) unnamed_addr #0 comdat align 2 !dbg !700 {
  %2 = alloca %"class.mspace::B"*, align 8
  store %"class.mspace::B"* %0, %"class.mspace::B"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::B"** %2, metadata !701, metadata !641), !dbg !702
  %3 = load %"class.mspace::B"*, %"class.mspace::B"** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)), !dbg !703
  ret void, !dbg !704
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1BD2Ev(%"class.mspace::B"*) unnamed_addr #0 comdat align 2 !dbg !705 {
  %2 = alloca %"class.mspace::B"*, align 8
  store %"class.mspace::B"* %0, %"class.mspace::B"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::B"** %2, metadata !707, metadata !641), !dbg !708
  %3 = load %"class.mspace::B"*, %"class.mspace::B"** %2, align 8
  %4 = bitcast %"class.mspace::B"* %3 to %"class.mspace::A"*, !dbg !709
  call void @_ZN6mspace1AD2Ev(%"class.mspace::A"* %4), !dbg !709
  ret void, !dbg !711
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #11
  call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1DD2Ev(%"class.mspace::D"*) unnamed_addr #0 comdat align 2 !dbg !712 {
  %2 = alloca %"class.mspace::D"*, align 8
  store %"class.mspace::D"* %0, %"class.mspace::D"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::D"** %2, metadata !714, metadata !641), !dbg !715
  %3 = load %"class.mspace::D"*, %"class.mspace::D"** %2, align 8
  %4 = getelementptr inbounds %"class.mspace::D", %"class.mspace::D"* %3, i32 0, i32 0, !dbg !716
  call void @_ZN6mspace1AD2Ev(%"class.mspace::A"* %4), !dbg !716
  ret void, !dbg !718
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1AD2Ev(%"class.mspace::A"*) unnamed_addr #0 comdat align 2 !dbg !719 {
  %2 = alloca %"class.mspace::A"*, align 8
  store %"class.mspace::A"* %0, %"class.mspace::A"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::A"** %2, metadata !721, metadata !641), !dbg !722
  %3 = load %"class.mspace::A"*, %"class.mspace::A"** %2, align 8
  %4 = bitcast %"class.mspace::A"* %3 to i32 (...)***, !dbg !723
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6mspace1AE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8, !dbg !723
  %5 = getelementptr inbounds %"class.mspace::A", %"class.mspace::A"* %3, i32 0, i32 3, !dbg !724
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %5), !dbg !724
  ret void, !dbg !723
}

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !726 {
  %1 = alloca %class.A, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %class.D, align 8
  %9 = alloca %class.B, align 8
  %10 = alloca %class.ZX, align 4
  %11 = alloca %class.B*, align 8
  %12 = alloca %class.B*, align 8
  %13 = alloca %class.A*, align 8
  %14 = alloca %class.STDClass, align 4
  call void @llvm.dbg.declare(metadata %class.A* %1, metadata !727, metadata !641), !dbg !728
  call void @_ZN1AC2Ev(%class.A* %1), !dbg !728
  %15 = getelementptr inbounds %class.A, %class.A* %1, i32 0, i32 3, !dbg !729
  store i32 1, i32* %2, align 4, !dbg !730
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %15, i32* dereferenceable(4) %2)
          to label %16 unwind label %36, !dbg !731

; <label>:16:                                     ; preds = %0
  %17 = getelementptr inbounds %class.A, %class.A* %1, i32 0, i32 3, !dbg !732
  store i32 1, i32* %5, align 4, !dbg !733
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %17, i32* dereferenceable(4) %5)
          to label %18 unwind label %36, !dbg !734

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %class.A, %class.A* %1, i32 0, i32 3, !dbg !735
  store i32 1, i32* %6, align 4, !dbg !736
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %19, i32* dereferenceable(4) %6)
          to label %20 unwind label %36, !dbg !737

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %class.A, %class.A* %1, i32 0, i32 3, !dbg !738
  store i32 1, i32* %7, align 4, !dbg !739
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %21, i32* dereferenceable(4) %7)
          to label %22 unwind label %36, !dbg !740

; <label>:22:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %class.D* %8, metadata !741, metadata !641), !dbg !746
  invoke void @_ZN1DC2Ev(%class.D* %8)
          to label %23 unwind label %36, !dbg !746

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %class.B* %9, metadata !747, metadata !641), !dbg !748
  invoke void @_ZN1BC2Ev(%class.B* %9)
          to label %24 unwind label %40, !dbg !748

; <label>:24:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %class.ZX* %10, metadata !749, metadata !641), !dbg !757
  invoke void @_ZN2ZX4testEv(%class.ZX* %10)
          to label %25 unwind label %44, !dbg !758

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %class.B** %11, metadata !759, metadata !641), !dbg !760
  %26 = bitcast %class.A* %1 to %class.B*, !dbg !761
  store %class.B* %26, %class.B** %11, align 8, !dbg !760
  call void @llvm.dbg.declare(metadata %class.B** %12, metadata !762, metadata !641), !dbg !763
  %27 = bitcast %class.D* %8 to %class.B*, !dbg !764
  store %class.B* %27, %class.B** %12, align 8, !dbg !763
  %28 = load %class.B*, %class.B** %11, align 8, !dbg !765
  invoke void @_ZN1B5testbEv(%class.B* %28)
          to label %29 unwind label %44, !dbg !766

; <label>:29:                                     ; preds = %25
  invoke void @_ZN1B5nimasEv(%class.B* %9)
          to label %30 unwind label %44, !dbg !767

; <label>:30:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %class.A** %13, metadata !768, metadata !641), !dbg !769
  %31 = load %class.B*, %class.B** %11, align 8, !dbg !770
  %32 = bitcast %class.B* %31 to %class.A*, !dbg !770
  store %class.A* %32, %class.A** %13, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata %class.STDClass* %14, metadata !771, metadata !641), !dbg !775
  invoke void @_Z5testsv()
          to label %33 unwind label %44, !dbg !776

; <label>:33:                                     ; preds = %30
  invoke void @_ZN1BD2Ev(%class.B* %9)
          to label %34 unwind label %40, !dbg !777

; <label>:34:                                     ; preds = %33
  invoke void @_ZN1DD2Ev(%class.D* %8)
          to label %35 unwind label %36, !dbg !777

; <label>:35:                                     ; preds = %34
  call void @_ZN1AD2Ev(%class.A* %1), !dbg !777
  ret i32 0, !dbg !777

; <label>:36:                                     ; preds = %34, %22, %20, %18, %16, %0
  %37 = landingpad { i8*, i32 }
          cleanup, !dbg !777
  %38 = extractvalue { i8*, i32 } %37, 0, !dbg !777
  store i8* %38, i8** %3, align 8, !dbg !777
  %39 = extractvalue { i8*, i32 } %37, 1, !dbg !777
  store i32 %39, i32* %4, align 4, !dbg !777
  br label %51, !dbg !777

; <label>:40:                                     ; preds = %33, %23
  %41 = landingpad { i8*, i32 }
          cleanup, !dbg !777
  %42 = extractvalue { i8*, i32 } %41, 0, !dbg !777
  store i8* %42, i8** %3, align 8, !dbg !777
  %43 = extractvalue { i8*, i32 } %41, 1, !dbg !777
  store i32 %43, i32* %4, align 4, !dbg !777
  br label %49, !dbg !777

; <label>:44:                                     ; preds = %30, %29, %25, %24
  %45 = landingpad { i8*, i32 }
          cleanup, !dbg !777
  %46 = extractvalue { i8*, i32 } %45, 0, !dbg !777
  store i8* %46, i8** %3, align 8, !dbg !777
  %47 = extractvalue { i8*, i32 } %45, 1, !dbg !777
  store i32 %47, i32* %4, align 4, !dbg !777
  invoke void @_ZN1BD2Ev(%class.B* %9)
          to label %48 unwind label %58, !dbg !777

; <label>:48:                                     ; preds = %44
  br label %49, !dbg !777

; <label>:49:                                     ; preds = %48, %40
  invoke void @_ZN1DD2Ev(%class.D* %8)
          to label %50 unwind label %58, !dbg !777

; <label>:50:                                     ; preds = %49
  br label %51, !dbg !777

; <label>:51:                                     ; preds = %50, %36
  invoke void @_ZN1AD2Ev(%class.A* %1)
          to label %52 unwind label %58, !dbg !777

; <label>:52:                                     ; preds = %51
  br label %53, !dbg !777

; <label>:53:                                     ; preds = %52
  %54 = load i8*, i8** %3, align 8, !dbg !777
  %55 = load i32, i32* %4, align 4, !dbg !777
  %56 = insertvalue { i8*, i32 } undef, i8* %54, 0, !dbg !777
  %57 = insertvalue { i8*, i32 } %56, i32 %55, 1, !dbg !777
  resume { i8*, i32 } %57, !dbg !777

; <label>:58:                                     ; preds = %51, %49, %44
  %59 = landingpad { i8*, i32 }
          catch i8* null, !dbg !777
  %60 = extractvalue { i8*, i32 } %59, 0, !dbg !777
  call void @__clang_call_terminate(i8* %60) #10, !dbg !777
  unreachable, !dbg !777
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1AC2Ev(%class.A*) unnamed_addr #0 comdat align 2 !dbg !778 {
  %2 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %2, align 8
  call void @llvm.dbg.declare(metadata %class.A** %2, metadata !780, metadata !641), !dbg !781
  %3 = load %class.A*, %class.A** %2, align 8
  %4 = bitcast %class.A* %3 to i32 (...)***, !dbg !782
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8, !dbg !782
  %5 = getelementptr inbounds %class.A, %class.A* %3, i32 0, i32 3, !dbg !782
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %5), !dbg !782
  ret void, !dbg !782
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"*, i32* dereferenceable(4)) #0 comdat align 2 !dbg !783 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %3, metadata !784, metadata !641), !dbg !786
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !787, metadata !641), !dbg !788
  %6 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %7 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*, !dbg !789
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0, !dbg !789
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 1, !dbg !791
  %10 = load i32*, i32** %9, align 8, !dbg !791
  %11 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*, !dbg !792
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0, !dbg !792
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %12, i32 0, i32 2, !dbg !793
  %14 = load i32*, i32** %13, align 8, !dbg !793
  %15 = icmp ne i32* %10, %14, !dbg !794
  br i1 %15, label %16, label %30, !dbg !795

; <label>:16:                                     ; preds = %2
  %17 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*, !dbg !796
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0, !dbg !796
  %19 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18 to %"class.std::allocator"*, !dbg !798
  %20 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*, !dbg !799
  %21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %20, i32 0, i32 0, !dbg !799
  %22 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %21, i32 0, i32 1, !dbg !800
  %23 = load i32*, i32** %22, align 8, !dbg !800
  %24 = load i32*, i32** %4, align 8, !dbg !801
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator"* dereferenceable(1) %19, i32* %23, i32* dereferenceable(4) %24), !dbg !802
  %25 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*, !dbg !803
  %26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %25, i32 0, i32 0, !dbg !803
  %27 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %26, i32 0, i32 1, !dbg !804
  %28 = load i32*, i32** %27, align 8, !dbg !805
  %29 = getelementptr inbounds i32, i32* %28, i32 1, !dbg !805
  store i32* %29, i32** %27, align 8, !dbg !805
  br label %36, !dbg !806

; <label>:30:                                     ; preds = %2
  %31 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %6), !dbg !807
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0, !dbg !807
  store i32* %31, i32** %32, align 8, !dbg !807
  %33 = load i32*, i32** %4, align 8, !dbg !808
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0, !dbg !809
  %35 = load i32*, i32** %34, align 8, !dbg !809
  call void @_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi(%"class.std::vector"* %6, i32* %35, i32* dereferenceable(4) %33), !dbg !809
  br label %36

; <label>:36:                                     ; preds = %30, %16
  ret void, !dbg !810
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1DC2Ev(%class.D*) unnamed_addr #0 comdat align 2 !dbg !811 {
  %2 = alloca %class.D*, align 8
  store %class.D* %0, %class.D** %2, align 8
  call void @llvm.dbg.declare(metadata %class.D** %2, metadata !816, metadata !641), !dbg !818
  %3 = load %class.D*, %class.D** %2, align 8
  %4 = getelementptr inbounds %class.D, %class.D* %3, i32 0, i32 0, !dbg !819
  call void @_ZN1AC2Ev(%class.A* %4), !dbg !819
  %5 = getelementptr inbounds %class.D, %class.D* %3, i32 0, i32 1, !dbg !819
  ret void, !dbg !819
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1BC2Ev(%class.B*) unnamed_addr #0 comdat align 2 !dbg !820 {
  %2 = alloca %class.B*, align 8
  store %class.B* %0, %class.B** %2, align 8
  call void @llvm.dbg.declare(metadata %class.B** %2, metadata !822, metadata !641), !dbg !823
  %3 = load %class.B*, %class.B** %2, align 8
  %4 = bitcast %class.B* %3 to %class.A*, !dbg !824
  call void @_ZN1AC2Ev(%class.A* %4), !dbg !824
  %5 = bitcast %class.B* %3 to i8*, !dbg !824
  %6 = getelementptr inbounds i8, i8* %5, i64 40, !dbg !824
  %7 = bitcast i8* %6 to %class.C*, !dbg !824
  %8 = bitcast %class.B* %3 to i32 (...)***, !dbg !824
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1B, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8, !dbg !824
  ret void, !dbg !824
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN2ZX4testEv(%class.ZX*) #0 comdat align 2 !dbg !825 {
  %2 = alloca %class.ZX*, align 8
  store %class.ZX* %0, %class.ZX** %2, align 8
  call void @llvm.dbg.declare(metadata %class.ZX** %2, metadata !826, metadata !641), !dbg !828
  %3 = load %class.ZX*, %class.ZX** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !829
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN1B5testbEv(%class.B*) #2 comdat align 2 !dbg !831 {
  %2 = alloca %class.B*, align 8
  store %class.B* %0, %class.B** %2, align 8
  call void @llvm.dbg.declare(metadata %class.B** %2, metadata !832, metadata !641), !dbg !833
  %3 = load %class.B*, %class.B** %2, align 8
  ret void, !dbg !834
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1B5nimasEv(%class.B*) unnamed_addr #0 comdat align 2 !dbg !835 {
  %2 = alloca %class.B*, align 8
  store %class.B* %0, %class.B** %2, align 8
  call void @llvm.dbg.declare(metadata %class.B** %2, metadata !836, metadata !641), !dbg !837
  %3 = load %class.B*, %class.B** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)), !dbg !838
  ret void, !dbg !839
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1BD2Ev(%class.B*) unnamed_addr #0 comdat align 2 !dbg !840 {
  %2 = alloca %class.B*, align 8
  store %class.B* %0, %class.B** %2, align 8
  call void @llvm.dbg.declare(metadata %class.B** %2, metadata !842, metadata !641), !dbg !843
  %3 = load %class.B*, %class.B** %2, align 8
  %4 = bitcast %class.B* %3 to %class.A*, !dbg !844
  call void @_ZN1AD2Ev(%class.A* %4), !dbg !844
  ret void, !dbg !846
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1DD2Ev(%class.D*) unnamed_addr #0 comdat align 2 !dbg !847 {
  %2 = alloca %class.D*, align 8
  store %class.D* %0, %class.D** %2, align 8
  call void @llvm.dbg.declare(metadata %class.D** %2, metadata !849, metadata !641), !dbg !850
  %3 = load %class.D*, %class.D** %2, align 8
  %4 = getelementptr inbounds %class.D, %class.D* %3, i32 0, i32 0, !dbg !851
  call void @_ZN1AD2Ev(%class.A* %4), !dbg !851
  ret void, !dbg !853
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1AD2Ev(%class.A*) unnamed_addr #0 comdat align 2 !dbg !854 {
  %2 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %2, align 8
  call void @llvm.dbg.declare(metadata %class.A** %2, metadata !856, metadata !641), !dbg !857
  %3 = load %class.A*, %class.A** %2, align 8
  %4 = bitcast %class.A* %3 to i32 (...)***, !dbg !858
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8, !dbg !858
  %5 = getelementptr inbounds %class.A, %class.A* %3, i32 0, i32 3, !dbg !859
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %5), !dbg !859
  ret void, !dbg !858
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"*) unnamed_addr #0 comdat align 2 !dbg !861 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %2, metadata !862, metadata !641), !dbg !863
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*, !dbg !864
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %4), !dbg !865
  ret void, !dbg !866
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN6mspace1A5nimasEv(%"class.mspace::A"*) unnamed_addr #0 comdat align 2 !dbg !867 {
  %2 = alloca %"class.mspace::A"*, align 8
  store %"class.mspace::A"* %0, %"class.mspace::A"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.mspace::A"** %2, metadata !868, metadata !641), !dbg !869
  %3 = load %"class.mspace::A"*, %"class.mspace::A"** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !870
  ret void, !dbg !871
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"*) unnamed_addr #0 comdat align 2 !dbg !872 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %2, metadata !873, metadata !641), !dbg !875
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !876
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4), !dbg !876
  ret void, !dbg !877
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*) unnamed_addr #2 comdat align 2 !dbg !878 {
  %2 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %0, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %2, metadata !879, metadata !641), !dbg !881
  %3 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator"*, !dbg !882
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %4) #11, !dbg !883
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 0, !dbg !884
  store i32* null, i32** %5, align 8, !dbg !884
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 1, !dbg !885
  store i32* null, i32** %6, align 8, !dbg !885
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 2, !dbg !886
  store i32* null, i32** %7, align 8, !dbg !886
  ret void, !dbg !887
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator"*) unnamed_addr #2 comdat align 2 !dbg !888 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !889, metadata !641), !dbg !891
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*, !dbg !892
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %4) #11, !dbg !893
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"*) unnamed_addr #2 comdat align 2 !dbg !895 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %2, metadata !896, metadata !641), !dbg !898
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void, !dbg !899
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !900 {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %2, metadata !901, metadata !641), !dbg !902
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*, !dbg !903
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !903
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7, i32 0, i32 0, !dbg !905
  %9 = load i32*, i32** %8, align 8, !dbg !905
  %10 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*, !dbg !906
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0, !dbg !906
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %11, i32 0, i32 1, !dbg !907
  %13 = load i32*, i32** %12, align 8, !dbg !907
  %14 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*, !dbg !908
  %15 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %14)
          to label %16 unwind label %19, !dbg !908

; <label>:16:                                     ; preds = %1
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %9, i32* %13, %"class.std::allocator"* dereferenceable(1) %15)
          to label %17 unwind label %19, !dbg !909

; <label>:17:                                     ; preds = %16
  %18 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*, !dbg !910
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %18), !dbg !910
  ret void, !dbg !911

; <label>:19:                                     ; preds = %16, %1
  %20 = landingpad { i8*, i32 }
          cleanup, !dbg !910
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !910
  store i8* %21, i8** %3, align 8, !dbg !910
  %22 = extractvalue { i8*, i32 } %20, 1, !dbg !910
  store i32 %22, i32* %4, align 4, !dbg !910
  %23 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*, !dbg !910
  invoke void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %23)
          to label %24 unwind label %30, !dbg !910

; <label>:24:                                     ; preds = %19
  br label %25, !dbg !910

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %3, align 8, !dbg !910
  %27 = load i32, i32* %4, align 4, !dbg !910
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0, !dbg !910
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1, !dbg !910
  resume { i8*, i32 } %29, !dbg !910

; <label>:30:                                     ; preds = %19
  %31 = landingpad { i8*, i32 }
          catch i8* null, !dbg !910
  %32 = extractvalue { i8*, i32 } %31, 0, !dbg !910
  call void @__clang_call_terminate(i8* %32) #10, !dbg !910
  unreachable, !dbg !910
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32*, i32*, %"class.std::allocator"* dereferenceable(1)) #0 comdat !dbg !912 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !918, metadata !641), !dbg !919
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !920, metadata !641), !dbg !921
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %6, metadata !922, metadata !641), !dbg !923
  %7 = load i32*, i32** %4, align 8, !dbg !924
  %8 = load i32*, i32** %5, align 8, !dbg !925
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %7, i32* %8), !dbg !926
  ret void, !dbg !927
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"*) #2 comdat align 2 !dbg !928 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %2, metadata !929, metadata !641), !dbg !930
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !931
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4 to %"class.std::allocator"*, !dbg !932
  ret %"class.std::allocator"* %5, !dbg !933
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"*) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !934 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %2, metadata !935, metadata !641), !dbg !936
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !937
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 0, !dbg !939
  %8 = load i32*, i32** %7, align 8, !dbg !939
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !940
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 2, !dbg !941
  %11 = load i32*, i32** %10, align 8, !dbg !941
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !942
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %12, i32 0, i32 0, !dbg !943
  %14 = load i32*, i32** %13, align 8, !dbg !943
  %15 = ptrtoint i32* %11 to i64, !dbg !944
  %16 = ptrtoint i32* %14 to i64, !dbg !944
  %17 = sub i64 %15, %16, !dbg !944
  %18 = sdiv exact i64 %17, 4, !dbg !944
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %5, i32* %8, i64 %18)
          to label %19 unwind label %21, !dbg !945

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !946
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %20) #11, !dbg !946
  ret void, !dbg !947

; <label>:21:                                     ; preds = %1
  %22 = landingpad { i8*, i32 }
          cleanup, !dbg !946
  %23 = extractvalue { i8*, i32 } %22, 0, !dbg !946
  store i8* %23, i8** %3, align 8, !dbg !946
  %24 = extractvalue { i8*, i32 } %22, 1, !dbg !946
  store i32 %24, i32* %4, align 4, !dbg !946
  %25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !946
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %25) #11, !dbg !946
  br label %26, !dbg !946

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %3, align 8, !dbg !946
  %28 = load i32, i32* %4, align 4, !dbg !946
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0, !dbg !946
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1, !dbg !946
  resume { i8*, i32 } %30, !dbg !946
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32*, i32*) #0 comdat !dbg !948 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !952, metadata !641), !dbg !953
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !954, metadata !641), !dbg !955
  %5 = load i32*, i32** %3, align 8, !dbg !956
  %6 = load i32*, i32** %4, align 8, !dbg !957
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %5, i32* %6), !dbg !958
  ret void, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32*, i32*) #2 comdat align 2 !dbg !960 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !965, metadata !641), !dbg !966
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !967, metadata !641), !dbg !968
  ret void, !dbg !969
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"*, i32*, i64) #0 comdat align 2 !dbg !970 {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %4, metadata !971, metadata !641), !dbg !972
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !973, metadata !641), !dbg !974
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !975, metadata !641), !dbg !976
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %8 = load i32*, i32** %5, align 8, !dbg !977
  %9 = icmp ne i32* %8, null, !dbg !977
  br i1 %9, label %10, label %15, !dbg !979

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0, !dbg !980
  %12 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %11 to %"class.std::allocator"*, !dbg !980
  %13 = load i32*, i32** %5, align 8, !dbg !981
  %14 = load i64, i64* %6, align 8, !dbg !982
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::allocator"* dereferenceable(1) %12, i32* %13, i64 %14), !dbg !983
  br label %15, !dbg !983

; <label>:15:                                     ; preds = %10, %3
  ret void, !dbg !984
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*) unnamed_addr #2 comdat align 2 !dbg !985 {
  %2 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %0, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %2, metadata !987, metadata !641), !dbg !988
  %3 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator"*, !dbg !989
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %4) #11, !dbg !989
  ret void, !dbg !991
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::allocator"* dereferenceable(1), i32*, i64) #0 comdat align 2 !dbg !992 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !993, metadata !641), !dbg !994
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !995, metadata !641), !dbg !996
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !997, metadata !641), !dbg !998
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8, !dbg !999
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*, !dbg !999
  %9 = load i32*, i32** %5, align 8, !dbg !1000
  %10 = load i64, i64* %6, align 8, !dbg !1001
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %8, i32* %9, i64 %10), !dbg !1002
  ret void, !dbg !1003
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"*, i32*, i64) #2 comdat align 2 !dbg !1004 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %4, metadata !1005, metadata !641), !dbg !1006
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1007, metadata !641), !dbg !1008
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1009, metadata !641), !dbg !1010
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i32*, i32** %5, align 8, !dbg !1011
  %9 = bitcast i32* %8 to i8*, !dbg !1011
  call void @_ZdlPv(i8* %9) #11, !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator"*) unnamed_addr #2 comdat align 2 !dbg !1014 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !1015, metadata !641), !dbg !1016
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*, !dbg !1017
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %4) #11, !dbg !1017
  ret void, !dbg !1019
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"*) unnamed_addr #2 comdat align 2 !dbg !1020 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %2, metadata !1021, metadata !641), !dbg !1022
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void, !dbg !1023
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN1A5nimasEv(%class.A*) unnamed_addr #0 comdat align 2 !dbg !1024 {
  %2 = alloca %class.A*, align 8
  store %class.A* %0, %class.A** %2, align 8
  call void @llvm.dbg.declare(metadata %class.A** %2, metadata !1025, metadata !641), !dbg !1026
  %3 = load %class.A*, %class.A** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1027
  ret void, !dbg !1028
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator"* dereferenceable(1), i32*, i32* dereferenceable(4)) #0 comdat align 2 !dbg !1029 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !1033, metadata !641), !dbg !1034
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1035, metadata !641), !dbg !1036
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1037, metadata !641), !dbg !1038
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8, !dbg !1039
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*, !dbg !1039
  %9 = load i32*, i32** %5, align 8, !dbg !1040
  %10 = load i32*, i32** %6, align 8, !dbg !1041
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator"* %8, i32* %9, i32* dereferenceable(4) %10), !dbg !1042
  ret void, !dbg !1043
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi(%"class.std::vector"*, i32*, i32* dereferenceable(4)) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1044 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*
  %14 = alloca i32
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store i32* %1, i32** %15, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %5, metadata !1046, metadata !641), !dbg !1047
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %4, metadata !1048, metadata !641), !dbg !1049
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1050, metadata !641), !dbg !1051
  %16 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %17 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1052
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0, !dbg !1052
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 1, !dbg !1054
  %20 = load i32*, i32** %19, align 8, !dbg !1054
  %21 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1055
  %22 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %21, i32 0, i32 0, !dbg !1055
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %22, i32 0, i32 2, !dbg !1056
  %24 = load i32*, i32** %23, align 8, !dbg !1056
  %25 = icmp ne i32* %20, %24, !dbg !1057
  br i1 %25, label %26, label %61, !dbg !1058

; <label>:26:                                     ; preds = %3
  %27 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1059
  %28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %27, i32 0, i32 0, !dbg !1059
  %29 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %28 to %"class.std::allocator"*, !dbg !1061
  %30 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1062
  %31 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %30, i32 0, i32 0, !dbg !1062
  %32 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %31, i32 0, i32 1, !dbg !1063
  %33 = load i32*, i32** %32, align 8, !dbg !1063
  %34 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1064
  %35 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %34, i32 0, i32 0, !dbg !1064
  %36 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %35, i32 0, i32 1, !dbg !1064
  %37 = load i32*, i32** %36, align 8, !dbg !1064
  %38 = getelementptr inbounds i32, i32* %37, i64 -1, !dbg !1064
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator"* dereferenceable(1) %29, i32* %33, i32* dereferenceable(4) %38), !dbg !1065
  %39 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1066
  %40 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %39, i32 0, i32 0, !dbg !1066
  %41 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %40, i32 0, i32 1, !dbg !1067
  %42 = load i32*, i32** %41, align 8, !dbg !1068
  %43 = getelementptr inbounds i32, i32* %42, i32 1, !dbg !1068
  store i32* %43, i32** %41, align 8, !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1069, metadata !641), !dbg !1070
  %44 = load i32*, i32** %6, align 8, !dbg !1071
  %45 = load i32, i32* %44, align 4, !dbg !1071
  store i32 %45, i32* %7, align 4, !dbg !1070
  %46 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %4), !dbg !1072
  %47 = load i32*, i32** %46, align 8, !dbg !1072
  %48 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1072
  %49 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %48, i32 0, i32 0, !dbg !1072
  %50 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %49, i32 0, i32 1, !dbg !1072
  %51 = load i32*, i32** %50, align 8, !dbg !1072
  %52 = getelementptr inbounds i32, i32* %51, i64 -2, !dbg !1072
  %53 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1072
  %54 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %53, i32 0, i32 0, !dbg !1072
  %55 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %54, i32 0, i32 1, !dbg !1072
  %56 = load i32*, i32** %55, align 8, !dbg !1072
  %57 = getelementptr inbounds i32, i32* %56, i64 -1, !dbg !1072
  %58 = call i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %47, i32* %52, i32* %57), !dbg !1072
  %59 = load i32, i32* %7, align 4, !dbg !1073
  %60 = call dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %4), !dbg !1074
  store i32 %59, i32* %60, align 4, !dbg !1075
  br label %182, !dbg !1076

; <label>:61:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1077, metadata !641), !dbg !1080
  %62 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %16, i64 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)), !dbg !1081
  store i64 %62, i64* %8, align 8, !dbg !1080
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1082, metadata !641), !dbg !1083
  %63 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %16), !dbg !1084
  %64 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0, !dbg !1084
  store i32* %63, i32** %64, align 8, !dbg !1084
  %65 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %10), !dbg !1085
  store i64 %65, i64* %9, align 8, !dbg !1083
  call void @llvm.dbg.declare(metadata i32** %11, metadata !1086, metadata !641), !dbg !1087
  %66 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1088
  %67 = load i64, i64* %8, align 8, !dbg !1089
  %68 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %66, i64 %67), !dbg !1088
  store i32* %68, i32** %11, align 8, !dbg !1087
  call void @llvm.dbg.declare(metadata i32** %12, metadata !1090, metadata !641), !dbg !1091
  %69 = load i32*, i32** %11, align 8, !dbg !1092
  store i32* %69, i32** %12, align 8, !dbg !1091
  %70 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1093
  %71 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %70, i32 0, i32 0, !dbg !1093
  %72 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %71 to %"class.std::allocator"*, !dbg !1095
  %73 = load i32*, i32** %11, align 8, !dbg !1096
  %74 = load i64, i64* %9, align 8, !dbg !1097
  %75 = getelementptr inbounds i32, i32* %73, i64 %74, !dbg !1098
  %76 = load i32*, i32** %6, align 8, !dbg !1099
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator"* dereferenceable(1) %72, i32* %75, i32* dereferenceable(4) %76)
          to label %77 unwind label %106, !dbg !1100

; <label>:77:                                     ; preds = %61
  store i32* null, i32** %12, align 8, !dbg !1101
  %78 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1102
  %79 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %78, i32 0, i32 0, !dbg !1102
  %80 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %79, i32 0, i32 0, !dbg !1103
  %81 = load i32*, i32** %80, align 8, !dbg !1103
  %82 = invoke dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %4)
          to label %83 unwind label %106, !dbg !1104

; <label>:83:                                     ; preds = %77
  %84 = load i32*, i32** %82, align 8, !dbg !1104
  %85 = load i32*, i32** %11, align 8, !dbg !1105
  %86 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1106
  %87 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %86)
          to label %88 unwind label %106, !dbg !1106

; <label>:88:                                     ; preds = %83
  %89 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %81, i32* %84, i32* %85, %"class.std::allocator"* dereferenceable(1) %87)
          to label %90 unwind label %106, !dbg !1107

; <label>:90:                                     ; preds = %88
  store i32* %89, i32** %12, align 8, !dbg !1108
  %91 = load i32*, i32** %12, align 8, !dbg !1109
  %92 = getelementptr inbounds i32, i32* %91, i32 1, !dbg !1109
  store i32* %92, i32** %12, align 8, !dbg !1109
  %93 = invoke dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %4)
          to label %94 unwind label %106, !dbg !1110

; <label>:94:                                     ; preds = %90
  %95 = load i32*, i32** %93, align 8, !dbg !1110
  %96 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1111
  %97 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %96, i32 0, i32 0, !dbg !1111
  %98 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %97, i32 0, i32 1, !dbg !1112
  %99 = load i32*, i32** %98, align 8, !dbg !1112
  %100 = load i32*, i32** %12, align 8, !dbg !1113
  %101 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1114
  %102 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %101)
          to label %103 unwind label %106, !dbg !1114

; <label>:103:                                    ; preds = %94
  %104 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %95, i32* %99, i32* %100, %"class.std::allocator"* dereferenceable(1) %102)
          to label %105 unwind label %106, !dbg !1115

; <label>:105:                                    ; preds = %103
  store i32* %104, i32** %12, align 8, !dbg !1116
  br label %140, !dbg !1117

; <label>:106:                                    ; preds = %103, %94, %90, %88, %83, %77, %61
  %107 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1118
  %108 = extractvalue { i8*, i32 } %107, 0, !dbg !1118
  store i8* %108, i8** %13, align 8, !dbg !1118
  %109 = extractvalue { i8*, i32 } %107, 1, !dbg !1118
  store i32 %109, i32* %14, align 4, !dbg !1118
  br label %110, !dbg !1118

; <label>:110:                                    ; preds = %106
  %111 = load i8*, i8** %13, align 8, !dbg !1117
  %112 = call i8* @__cxa_begin_catch(i8* %111) #11, !dbg !1117
  %113 = load i32*, i32** %12, align 8, !dbg !1119
  %114 = icmp ne i32* %113, null, !dbg !1119
  br i1 %114, label %127, label %115, !dbg !1122

; <label>:115:                                    ; preds = %110
  %116 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1123
  %117 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %116, i32 0, i32 0, !dbg !1123
  %118 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %117 to %"class.std::allocator"*, !dbg !1124
  %119 = load i32*, i32** %11, align 8, !dbg !1125
  %120 = load i64, i64* %9, align 8, !dbg !1126
  %121 = getelementptr inbounds i32, i32* %119, i64 %120, !dbg !1127
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator"* dereferenceable(1) %118, i32* %121)
          to label %122 unwind label %123, !dbg !1128

; <label>:122:                                    ; preds = %115
  br label %134, !dbg !1128

; <label>:123:                                    ; preds = %138, %134, %132, %127, %115
  %124 = landingpad { i8*, i32 }
          cleanup, !dbg !1129
  %125 = extractvalue { i8*, i32 } %124, 0, !dbg !1129
  store i8* %125, i8** %13, align 8, !dbg !1129
  %126 = extractvalue { i8*, i32 } %124, 1, !dbg !1129
  store i32 %126, i32* %14, align 4, !dbg !1129
  invoke void @__cxa_end_catch()
          to label %139 unwind label %188, !dbg !1130

; <label>:127:                                    ; preds = %110
  %128 = load i32*, i32** %11, align 8, !dbg !1131
  %129 = load i32*, i32** %12, align 8, !dbg !1132
  %130 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1133
  %131 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %130)
          to label %132 unwind label %123, !dbg !1133

; <label>:132:                                    ; preds = %127
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %128, i32* %129, %"class.std::allocator"* dereferenceable(1) %131)
          to label %133 unwind label %123, !dbg !1134

; <label>:133:                                    ; preds = %132
  br label %134

; <label>:134:                                    ; preds = %133, %122
  %135 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1135
  %136 = load i32*, i32** %11, align 8, !dbg !1136
  %137 = load i64, i64* %8, align 8, !dbg !1137
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %135, i32* %136, i64 %137)
          to label %138 unwind label %123, !dbg !1135

; <label>:138:                                    ; preds = %134
  invoke void @__cxa_rethrow() #12
          to label %191 unwind label %123, !dbg !1138

; <label>:139:                                    ; preds = %123
  br label %183, !dbg !1130

; <label>:140:                                    ; preds = %105
  %141 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1139
  %142 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %141, i32 0, i32 0, !dbg !1139
  %143 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %142, i32 0, i32 0, !dbg !1140
  %144 = load i32*, i32** %143, align 8, !dbg !1140
  %145 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1141
  %146 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %145, i32 0, i32 0, !dbg !1141
  %147 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %146, i32 0, i32 1, !dbg !1142
  %148 = load i32*, i32** %147, align 8, !dbg !1142
  %149 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1143
  %150 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %149), !dbg !1143
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %144, i32* %148, %"class.std::allocator"* dereferenceable(1) %150), !dbg !1144
  %151 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1145
  %152 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1146
  %153 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %152, i32 0, i32 0, !dbg !1146
  %154 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %153, i32 0, i32 0, !dbg !1147
  %155 = load i32*, i32** %154, align 8, !dbg !1147
  %156 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1148
  %157 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %156, i32 0, i32 0, !dbg !1148
  %158 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %157, i32 0, i32 2, !dbg !1149
  %159 = load i32*, i32** %158, align 8, !dbg !1149
  %160 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1150
  %161 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %160, i32 0, i32 0, !dbg !1150
  %162 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %161, i32 0, i32 0, !dbg !1151
  %163 = load i32*, i32** %162, align 8, !dbg !1151
  %164 = ptrtoint i32* %159 to i64, !dbg !1152
  %165 = ptrtoint i32* %163 to i64, !dbg !1152
  %166 = sub i64 %164, %165, !dbg !1152
  %167 = sdiv exact i64 %166, 4, !dbg !1152
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %151, i32* %155, i64 %167), !dbg !1145
  %168 = load i32*, i32** %11, align 8, !dbg !1153
  %169 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1154
  %170 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %169, i32 0, i32 0, !dbg !1154
  %171 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %170, i32 0, i32 0, !dbg !1155
  store i32* %168, i32** %171, align 8, !dbg !1156
  %172 = load i32*, i32** %12, align 8, !dbg !1157
  %173 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1158
  %174 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %173, i32 0, i32 0, !dbg !1158
  %175 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %174, i32 0, i32 1, !dbg !1159
  store i32* %172, i32** %175, align 8, !dbg !1160
  %176 = load i32*, i32** %11, align 8, !dbg !1161
  %177 = load i64, i64* %8, align 8, !dbg !1162
  %178 = getelementptr inbounds i32, i32* %176, i64 %177, !dbg !1163
  %179 = bitcast %"class.std::vector"* %16 to %"struct.std::_Vector_base"*, !dbg !1164
  %180 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %179, i32 0, i32 0, !dbg !1164
  %181 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %180, i32 0, i32 2, !dbg !1165
  store i32* %178, i32** %181, align 8, !dbg !1166
  br label %182

; <label>:182:                                    ; preds = %140, %26
  ret void, !dbg !1167

; <label>:183:                                    ; preds = %139
  %184 = load i8*, i8** %13, align 8, !dbg !1130
  %185 = load i32, i32* %14, align 4, !dbg !1130
  %186 = insertvalue { i8*, i32 } undef, i8* %184, 0, !dbg !1130
  %187 = insertvalue { i8*, i32 } %186, i32 %185, 1, !dbg !1130
  resume { i8*, i32 } %187, !dbg !1130

; <label>:188:                                    ; preds = %123
  %189 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1130
  %190 = extractvalue { i8*, i32 } %189, 0, !dbg !1130
  call void @__clang_call_terminate(i8* %190) #10, !dbg !1130
  unreachable, !dbg !1130

; <label>:191:                                    ; preds = %138
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"*) #0 comdat align 2 !dbg !1168 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %3, metadata !1169, metadata !641), !dbg !1170
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !1171
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !1171
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 1, !dbg !1172
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %2, i32** dereferenceable(8) %7), !dbg !1173
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0, !dbg !1174
  %9 = load i32*, i32** %8, align 8, !dbg !1174
  ret i32* %9, !dbg !1174
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator"*, i32*, i32* dereferenceable(4)) #2 comdat align 2 !dbg !1175 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %4, metadata !1176, metadata !641), !dbg !1177
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1178, metadata !641), !dbg !1179
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1180, metadata !641), !dbg !1181
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i32*, i32** %5, align 8, !dbg !1182
  %9 = bitcast i32* %8 to i8*, !dbg !1182
  %10 = bitcast i8* %9 to i32*, !dbg !1183
  %11 = load i32*, i32** %6, align 8, !dbg !1184
  %12 = load i32, i32* %11, align 4, !dbg !1184
  store i32 %12, i32* %10, align 4, !dbg !1183
  ret void, !dbg !1185
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1186 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1193, metadata !641), !dbg !1194
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1195, metadata !641), !dbg !1196
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1197, metadata !641), !dbg !1198
  %7 = load i32*, i32** %4, align 8, !dbg !1199
  %8 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %7), !dbg !1200
  %9 = load i32*, i32** %5, align 8, !dbg !1201
  %10 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %9), !dbg !1202
  %11 = load i32*, i32** %6, align 8, !dbg !1203
  %12 = call i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %8, i32* %10, i32* %11), !dbg !1204
  ret i32* %12, !dbg !1205
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"*) #2 comdat align 2 !dbg !1206 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %2, metadata !1207, metadata !641), !dbg !1209
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0, !dbg !1210
  ret i32** %4, !dbg !1211
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"*) #2 comdat align 2 !dbg !1212 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %2, metadata !1213, metadata !641), !dbg !1214
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0, !dbg !1215
  %5 = load i32*, i32** %4, align 8, !dbg !1215
  ret i32* %5, !dbg !1216
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"*, i64, i8*) #0 comdat align 2 !dbg !1217 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %4, metadata !1218, metadata !641), !dbg !1220
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1221, metadata !641), !dbg !1222
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1223, metadata !641), !dbg !1224
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %9), !dbg !1225
  %11 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %9), !dbg !1227
  %12 = sub i64 %10, %11, !dbg !1228
  %13 = load i64, i64* %5, align 8, !dbg !1229
  %14 = icmp ult i64 %12, %13, !dbg !1230
  br i1 %14, label %15, label %17, !dbg !1231

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !1232
  call void @_ZSt20__throw_length_errorPKc(i8* %16) #12, !dbg !1233
  unreachable, !dbg !1233

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1234, metadata !641), !dbg !1235
  %18 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %9), !dbg !1236
  %19 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %9), !dbg !1237
  store i64 %19, i64* %8, align 8, !dbg !1237
  %20 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %8, i64* dereferenceable(8) %5), !dbg !1238
  %21 = load i64, i64* %20, align 8, !dbg !1238
  %22 = add i64 %18, %21, !dbg !1239
  store i64 %22, i64* %7, align 8, !dbg !1235
  %23 = load i64, i64* %7, align 8, !dbg !1240
  %24 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %9), !dbg !1241
  %25 = icmp ult i64 %23, %24, !dbg !1242
  br i1 %25, label %30, label %26, !dbg !1243

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %7, align 8, !dbg !1244
  %28 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %9), !dbg !1245
  %29 = icmp ugt i64 %27, %28, !dbg !1246
  br i1 %29, label %30, label %32, !dbg !1247

; <label>:30:                                     ; preds = %26, %17
  %31 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %9), !dbg !1248
  br label %34, !dbg !1247

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %7, align 8, !dbg !1249
  br label %34, !dbg !1247

; <label>:34:                                     ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !1247
  ret i64 %35, !dbg !1250
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8), %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8)) #2 comdat !dbg !1251 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %3, metadata !1255, metadata !641), !dbg !1256
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %4, metadata !1257, metadata !641), !dbg !1258
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8, !dbg !1259
  %6 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %5), !dbg !1260
  %7 = load i32*, i32** %6, align 8, !dbg !1260
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8, !dbg !1261
  %9 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %8), !dbg !1262
  %10 = load i32*, i32** %9, align 8, !dbg !1262
  %11 = ptrtoint i32* %7 to i64, !dbg !1263
  %12 = ptrtoint i32* %10 to i64, !dbg !1263
  %13 = sub i64 %11, %12, !dbg !1263
  %14 = sdiv exact i64 %13, 4, !dbg !1263
  ret i64 %14, !dbg !1264
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"*) #0 comdat align 2 !dbg !1265 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %3, metadata !1266, metadata !641), !dbg !1267
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !1268
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !1268
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 0, !dbg !1269
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %2, i32** dereferenceable(8) %7), !dbg !1270
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0, !dbg !1271
  %9 = load i32*, i32** %8, align 8, !dbg !1271
  ret i32* %9, !dbg !1271
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"*, i64) #0 comdat align 2 !dbg !1272 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %3, metadata !1273, metadata !641), !dbg !1274
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1275, metadata !641), !dbg !1276
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8, !dbg !1277
  %7 = icmp ne i64 %6, 0, !dbg !1278
  br i1 %7, label %8, label %13, !dbg !1277

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !1279
  %10 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9 to %"class.std::allocator"*, !dbg !1279
  %11 = load i64, i64* %4, align 8, !dbg !1280
  %12 = call i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1) %10, i64 %11), !dbg !1281
  br label %14, !dbg !1277

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1277

; <label>:14:                                     ; preds = %13, %8
  %15 = phi i32* [ %12, %8 ], [ null, %13 ], !dbg !1277
  ret i32* %15, !dbg !1282
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32*, i32*, i32*, %"class.std::allocator"* dereferenceable(1)) #0 comdat !dbg !1283 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1290, metadata !641), !dbg !1291
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1292, metadata !641), !dbg !1293
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1294, metadata !641), !dbg !1295
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %8, metadata !1296, metadata !641), !dbg !1297
  %9 = load i32*, i32** %5, align 8, !dbg !1298
  %10 = load i32*, i32** %6, align 8, !dbg !1299
  %11 = load i32*, i32** %7, align 8, !dbg !1300
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8, !dbg !1301
  %13 = call i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %9, i32* %10, i32* %11, %"class.std::allocator"* dereferenceable(1) %12), !dbg !1302
  ret i32* %13, !dbg !1303
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator"* dereferenceable(1), i32*) #0 comdat align 2 !dbg !1304 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %3, metadata !1305, metadata !641), !dbg !1306
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1307, metadata !641), !dbg !1308
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8, !dbg !1309
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*, !dbg !1309
  %7 = load i32*, i32** %4, align 8, !dbg !1310
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator"* %6, i32* %7), !dbg !1311
  ret void, !dbg !1312
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1313 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1316, metadata !641), !dbg !1317
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1318, metadata !641), !dbg !1319
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1320, metadata !641), !dbg !1321
  %7 = load i32*, i32** %4, align 8, !dbg !1322
  %8 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %7), !dbg !1323
  %9 = load i32*, i32** %5, align 8, !dbg !1324
  %10 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %9), !dbg !1325
  %11 = load i32*, i32** %6, align 8, !dbg !1326
  %12 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %11), !dbg !1327
  %13 = call i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %8, i32* %10, i32* %12), !dbg !1328
  ret i32* %13, !dbg !1329
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32*) #2 comdat !dbg !1330 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1339, metadata !641), !dbg !1340
  %3 = load i32*, i32** %2, align 8, !dbg !1341
  %4 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %3), !dbg !1342
  ret i32* %4, !dbg !1343
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1344 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1345, metadata !641), !dbg !1346
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1347, metadata !641), !dbg !1348
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1349, metadata !641), !dbg !1350
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1351, metadata !641), !dbg !1353
  store i8 1, i8* %7, align 1, !dbg !1353
  %8 = load i32*, i32** %4, align 8, !dbg !1354
  %9 = load i32*, i32** %5, align 8, !dbg !1355
  %10 = load i32*, i32** %6, align 8, !dbg !1356
  %11 = call i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %8, i32* %9, i32* %10), !dbg !1357
  ret i32* %11, !dbg !1358
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32*) #0 comdat !dbg !1359 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1360, metadata !641), !dbg !1361
  %3 = load i32*, i32** %2, align 8, !dbg !1362
  %4 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %3), !dbg !1363
  ret i32* %4, !dbg !1364
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32*, i32*, i32*) #2 comdat align 2 !dbg !1365 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1383, metadata !641), !dbg !1384
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1385, metadata !641), !dbg !1386
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1387, metadata !641), !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1389, metadata !641), !dbg !1391
  %8 = load i32*, i32** %5, align 8, !dbg !1392
  %9 = load i32*, i32** %4, align 8, !dbg !1393
  %10 = ptrtoint i32* %8 to i64, !dbg !1394
  %11 = ptrtoint i32* %9 to i64, !dbg !1394
  %12 = sub i64 %10, %11, !dbg !1394
  %13 = sdiv exact i64 %12, 4, !dbg !1394
  store i64 %13, i64* %7, align 8, !dbg !1391
  %14 = load i64, i64* %7, align 8, !dbg !1395
  %15 = icmp ne i64 %14, 0, !dbg !1395
  br i1 %15, label %16, label %26, !dbg !1397

; <label>:16:                                     ; preds = %3
  %17 = load i32*, i32** %6, align 8, !dbg !1398
  %18 = load i64, i64* %7, align 8, !dbg !1399
  %19 = sub i64 0, %18, !dbg !1400
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !1400
  %21 = bitcast i32* %20 to i8*, !dbg !1401
  %22 = load i32*, i32** %4, align 8, !dbg !1402
  %23 = bitcast i32* %22 to i8*, !dbg !1401
  %24 = load i64, i64* %7, align 8, !dbg !1403
  %25 = mul i64 4, %24, !dbg !1404
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %21, i8* %23, i64 %25, i32 4, i1 false), !dbg !1401
  br label %26, !dbg !1401

; <label>:26:                                     ; preds = %16, %3
  %27 = load i32*, i32** %6, align 8, !dbg !1405
  %28 = load i64, i64* %7, align 8, !dbg !1406
  %29 = sub i64 0, %28, !dbg !1407
  %30 = getelementptr inbounds i32, i32* %27, i64 %29, !dbg !1407
  ret i32* %30, !dbg !1408
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32*) #2 comdat align 2 !dbg !1409 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1410, metadata !641), !dbg !1411
  %3 = load i32*, i32** %2, align 8, !dbg !1412
  ret i32* %3, !dbg !1413
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"*) #0 comdat align 2 !dbg !1414 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %2, metadata !1415, metadata !641), !dbg !1416
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*, !dbg !1417
  %5 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4), !dbg !1417
  %6 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_(%"class.std::allocator"* dereferenceable(1) %5), !dbg !1418
  ret i64 %6, !dbg !1419
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"*) #2 comdat align 2 !dbg !1420 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %2, metadata !1421, metadata !641), !dbg !1422
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*, !dbg !1423
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !1423
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1, !dbg !1424
  %7 = load i32*, i32** %6, align 8, !dbg !1424
  %8 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*, !dbg !1425
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0, !dbg !1425
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 0, !dbg !1426
  %11 = load i32*, i32** %10, align 8, !dbg !1426
  %12 = ptrtoint i32* %7 to i64, !dbg !1427
  %13 = ptrtoint i32* %11 to i64, !dbg !1427
  %14 = sub i64 %12, %13, !dbg !1427
  %15 = sdiv exact i64 %14, 4, !dbg !1427
  ret i64 %15, !dbg !1428
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8), i64* dereferenceable(8)) #2 comdat !dbg !1429 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1436, metadata !641), !dbg !1437
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !1438, metadata !641), !dbg !1439
  %6 = load i64*, i64** %4, align 8, !dbg !1440
  %7 = load i64, i64* %6, align 8, !dbg !1440
  %8 = load i64*, i64** %5, align 8, !dbg !1442
  %9 = load i64, i64* %8, align 8, !dbg !1442
  %10 = icmp ult i64 %7, %9, !dbg !1443
  br i1 %10, label %11, label %13, !dbg !1444

; <label>:11:                                     ; preds = %2
  %12 = load i64*, i64** %5, align 8, !dbg !1445
  store i64* %12, i64** %3, align 8, !dbg !1446
  br label %15, !dbg !1446

; <label>:13:                                     ; preds = %2
  %14 = load i64*, i64** %4, align 8, !dbg !1447
  store i64* %14, i64** %3, align 8, !dbg !1448
  br label %15, !dbg !1448

; <label>:15:                                     ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8, !dbg !1449
  ret i64* %16, !dbg !1449
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_(%"class.std::allocator"* dereferenceable(1)) #2 comdat align 2 !dbg !1450 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !1451, metadata !641), !dbg !1452
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8, !dbg !1453
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*, !dbg !1453
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %4) #11, !dbg !1454
  ret i64 %5, !dbg !1455
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"*) #2 comdat align 2 !dbg !1456 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %2, metadata !1457, metadata !641), !dbg !1459
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !1460
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4 to %"class.std::allocator"*, !dbg !1461
  ret %"class.std::allocator"* %5, !dbg !1462
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"*) #2 comdat align 2 !dbg !1463 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %2, metadata !1464, metadata !641), !dbg !1466
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 4611686018427387903, !dbg !1467
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"*, i32** dereferenceable(8)) unnamed_addr #2 comdat align 2 !dbg !1468 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %3, metadata !1469, metadata !641), !dbg !1471
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !1472, metadata !641), !dbg !1473
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0, !dbg !1474
  %7 = load i32**, i32*** %4, align 8, !dbg !1475
  %8 = load i32*, i32** %7, align 8, !dbg !1475
  store i32* %8, i32** %6, align 8, !dbg !1474
  ret void, !dbg !1476
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1), i64) #0 comdat align 2 !dbg !1477 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %3, metadata !1478, metadata !641), !dbg !1479
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1480, metadata !641), !dbg !1481
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8, !dbg !1482
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*, !dbg !1482
  %7 = load i64, i64* %4, align 8, !dbg !1483
  %8 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %6, i64 %7, i8* null), !dbg !1484
  ret i32* %8, !dbg !1485
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"*, i64, i8*) #0 comdat align 2 !dbg !1486 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %4, metadata !1487, metadata !641), !dbg !1488
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1489, metadata !641), !dbg !1490
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1491, metadata !641), !dbg !1492
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8, !dbg !1493
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %7) #11, !dbg !1495
  %10 = icmp ugt i64 %8, %9, !dbg !1496
  br i1 %10, label %11, label %12, !dbg !1497

; <label>:11:                                     ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #12, !dbg !1498
  unreachable, !dbg !1498

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %5, align 8, !dbg !1499
  %14 = mul i64 %13, 4, !dbg !1500
  %15 = call i8* @_Znwm(i64 %14), !dbg !1501
  %16 = bitcast i8* %15 to i32*, !dbg !1502
  ret i32* %16, !dbg !1503
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #8

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32*, i32*, i32*, %"class.std::allocator"* dereferenceable(1)) #0 comdat !dbg !1504 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1506, metadata !641), !dbg !1507
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1508, metadata !641), !dbg !1509
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1510, metadata !641), !dbg !1511
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %8, metadata !1512, metadata !641), !dbg !1513
  %9 = load i32*, i32** %5, align 8, !dbg !1514
  %10 = load i32*, i32** %6, align 8, !dbg !1515
  %11 = load i32*, i32** %7, align 8, !dbg !1516
  %12 = call i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %9, i32* %10, i32* %11), !dbg !1517
  ret i32* %12, !dbg !1518
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1519 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1521, metadata !641), !dbg !1522
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1523, metadata !641), !dbg !1524
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1525, metadata !641), !dbg !1526
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1527, metadata !641), !dbg !1528
  store i8 1, i8* %7, align 1, !dbg !1528
  %8 = load i32*, i32** %4, align 8, !dbg !1529
  %9 = load i32*, i32** %5, align 8, !dbg !1530
  %10 = load i32*, i32** %6, align 8, !dbg !1531
  %11 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %8, i32* %9, i32* %10), !dbg !1532
  ret i32* %11, !dbg !1533
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32*, i32*, i32*) #0 comdat align 2 !dbg !1534 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1539, metadata !641), !dbg !1540
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1541, metadata !641), !dbg !1542
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1543, metadata !641), !dbg !1544
  %7 = load i32*, i32** %4, align 8, !dbg !1545
  %8 = load i32*, i32** %5, align 8, !dbg !1546
  %9 = load i32*, i32** %6, align 8, !dbg !1547
  %10 = call i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %7, i32* %8, i32* %9), !dbg !1548
  ret i32* %10, !dbg !1549
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1550 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1554, metadata !641), !dbg !1555
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1556, metadata !641), !dbg !1557
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1558, metadata !641), !dbg !1559
  %7 = load i32*, i32** %4, align 8, !dbg !1560
  %8 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %7), !dbg !1561
  %9 = load i32*, i32** %5, align 8, !dbg !1562
  %10 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %9), !dbg !1563
  %11 = load i32*, i32** %6, align 8, !dbg !1564
  %12 = call i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %8, i32* %10, i32* %11), !dbg !1565
  ret i32* %12, !dbg !1566
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1567 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1569, metadata !641), !dbg !1570
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1571, metadata !641), !dbg !1572
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1573, metadata !641), !dbg !1574
  %7 = load i32*, i32** %4, align 8, !dbg !1575
  %8 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %7), !dbg !1576
  %9 = load i32*, i32** %5, align 8, !dbg !1577
  %10 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %9), !dbg !1578
  %11 = load i32*, i32** %6, align 8, !dbg !1579
  %12 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %11), !dbg !1580
  %13 = call i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %8, i32* %10, i32* %12), !dbg !1581
  ret i32* %13, !dbg !1582
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32*, i32*, i32*) #0 comdat !dbg !1583 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1584, metadata !641), !dbg !1585
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1586, metadata !641), !dbg !1587
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1588, metadata !641), !dbg !1589
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1590, metadata !641), !dbg !1591
  store i8 1, i8* %7, align 1, !dbg !1591
  %8 = load i32*, i32** %4, align 8, !dbg !1592
  %9 = load i32*, i32** %5, align 8, !dbg !1593
  %10 = load i32*, i32** %6, align 8, !dbg !1594
  %11 = call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %8, i32* %9, i32* %10), !dbg !1595
  ret i32* %11, !dbg !1596
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32*, i32*, i32*) #2 comdat align 2 !dbg !1597 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1600, metadata !641), !dbg !1601
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1602, metadata !641), !dbg !1603
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1604, metadata !641), !dbg !1605
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1606, metadata !641), !dbg !1607
  %8 = load i32*, i32** %5, align 8, !dbg !1608
  %9 = load i32*, i32** %4, align 8, !dbg !1609
  %10 = ptrtoint i32* %8 to i64, !dbg !1610
  %11 = ptrtoint i32* %9 to i64, !dbg !1610
  %12 = sub i64 %10, %11, !dbg !1610
  %13 = sdiv exact i64 %12, 4, !dbg !1610
  store i64 %13, i64* %7, align 8, !dbg !1607
  %14 = load i64, i64* %7, align 8, !dbg !1611
  %15 = icmp ne i64 %14, 0, !dbg !1611
  br i1 %15, label %16, label %23, !dbg !1613

; <label>:16:                                     ; preds = %3
  %17 = load i32*, i32** %6, align 8, !dbg !1614
  %18 = bitcast i32* %17 to i8*, !dbg !1615
  %19 = load i32*, i32** %4, align 8, !dbg !1616
  %20 = bitcast i32* %19 to i8*, !dbg !1615
  %21 = load i64, i64* %7, align 8, !dbg !1617
  %22 = mul i64 4, %21, !dbg !1618
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %22, i32 4, i1 false), !dbg !1615
  br label %23, !dbg !1615

; <label>:23:                                     ; preds = %16, %3
  %24 = load i32*, i32** %6, align 8, !dbg !1619
  %25 = load i64, i64* %7, align 8, !dbg !1620
  %26 = getelementptr inbounds i32, i32* %24, i64 %25, !dbg !1621
  ret i32* %26, !dbg !1622
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator"*, i32*) #2 comdat align 2 !dbg !1623 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %3, metadata !1624, metadata !641), !dbg !1625
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1626, metadata !641), !dbg !1627
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  ret void, !dbg !1628
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!632, !633, !634}
!llvm.ident = !{!635}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 5.0.1 (tags/RELEASE_501/final 322011)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, imports: !439)
!1 = !DIFile(filename: "a.cpp", directory: "/tests/g++")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 113, size: 32, elements: !11, identifier: "_ZTSNSt10__are_sameIiiEUt_E")
!4 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cpp_type_traits.h", directory: "/tests/g++")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__are_same<int, int>", scope: !6, file: !4, line: 111, size: 8, elements: !7, templateParams: !8, identifier: "_ZTSSt10__are_sameIiiE")
!6 = !DINamespace(name: "std", scope: null)
!7 = !{}
!8 = !{!9, !9}
!9 = !DITemplateTypeParameter(type: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DIEnumerator(name: "__value", value: 1)
!13 = !{!14, !410, !411, !435, !436, !437, !208, !72, !88, !438, !228}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "B", scope: !16, file: !1, line: 28, size: 384, elements: !17, vtableHolder: !19, identifier: "_ZTSN6mspace1BE")
!16 = !DINamespace(name: "mspace", scope: null)
!17 = !{!18, !400, !404, !408, !409}
!18 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !15, baseType: !19, flags: DIFlagPublic)
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", scope: !16, file: !1, line: 14, size: 320, elements: !20, vtableHolder: !19, identifier: "_ZTSN6mspace1AE")
!20 = !{!21, !26, !27, !28, !395, !399}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A", scope: !1, file: !1, baseType: !22, size: 64, flags: DIFlagArtificial)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!10}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !19, file: !1, line: 16, baseType: !10, size: 32, offset: 64, flags: DIFlagPublic)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !19, file: !1, line: 17, baseType: !10, size: 32, offset: 96, flags: DIFlagPublic)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !19, file: !1, line: 18, baseType: !29, size: 192, offset: 128, flags: DIFlagPublic)
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<int, std::allocator<int> >", scope: !6, file: !30, line: 214, size: 192, elements: !31, templateParams: !194, identifier: "_ZTSSt6vectorIiSaIiEE")
!30 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_vector.h", directory: "/tests/g++")
!31 = !{!32, !195, !199, !205, !212, !217, !218, !222, !225, !287, !293, !294, !295, !300, !305, !306, !307, !310, !311, !314, !315, !319, !322, !328, !334, !337, !338, !339, !342, !345, !346, !347, !351, !357, !360, !361, !364, !367, !370, !373, !376, !377, !378, !379, !380, !383, !390, !393, !394}
!32 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !29, baseType: !33, flags: DIFlagProtected)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<int, std::allocator<int> >", scope: !6, file: !30, line: 72, size: 192, elements: !34, templateParams: !194, identifier: "_ZTSSt12_Vector_baseIiSaIiEE")
!34 = !{!35, !158, !163, !168, !172, !175, !180, !183, !186, !187, !190, !193}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !33, file: !30, line: 164, baseType: !36, size: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !33, file: !30, line: 79, size: 192, elements: !37, identifier: "_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE")
!37 = !{!38, !141, !143, !144, !145, !149, !154}
!38 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !36, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !33, file: !30, line: 75, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !42, file: !41, line: 208, baseType: !137)
!41 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/alloc_traits.h", directory: "/tests/g++")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<int>", scope: !43, file: !41, line: 207, size: 8, elements: !7, templateParams: !105, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIiEE6rebindIiEE")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<int> >", scope: !44, file: !41, line: 95, size: 8, elements: !45, templateParams: !135, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIiEEE")
!44 = !DINamespace(name: "__gnu_cxx", scope: null)
!45 = !{!46, !120, !123, !126, !129, !132}
!46 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m", scope: !43, file: !41, line: 181, type: !47, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !117, !118}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !43, file: !41, line: 172, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !52, file: !51, line: 97, baseType: !72)
!51 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocator.h", directory: "/tests/g++")
!52 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<int>", scope: !6, file: !51, line: 92, size: 8, elements: !53, templateParams: !105, identifier: "_ZTSSaIiE")
!53 = !{!54, !107, !111, !116}
!54 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !52, baseType: !55, flags: DIFlagPublic)
!55 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<int>", scope: !44, file: !56, line: 58, size: 8, elements: !57, templateParams: !105, identifier: "_ZTSN9__gnu_cxx13new_allocatorIiEE")
!56 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/new_allocator.h", directory: "/tests/g++")
!57 = !{!58, !62, !67, !68, !76, !84, !93, !96, !99, !102}
!58 = !DISubprogram(name: "new_allocator", scope: !55, file: !56, line: 79, type: !59, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!62 = !DISubprogram(name: "new_allocator", scope: !55, file: !56, line: 81, type: !63, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !61, !65}
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!67 = !DISubprogram(name: "~new_allocator", scope: !55, file: !56, line: 86, type: !59, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!68 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE7addressERi", scope: !55, file: !56, line: 89, type: !69, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !73, !74}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !55, file: !56, line: 63, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !55, file: !56, line: 65, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!76 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE7addressERKi", scope: !55, file: !56, line: 93, type: !77, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !73, !82}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !55, file: !56, line: 64, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !55, file: !56, line: 66, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !81, size: 64)
!84 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv", scope: !55, file: !56, line: 99, type: !85, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{!71, !61, !87, !91}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !56, line: 61, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !6, file: !89, line: 196, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++config.h", directory: "/tests/g++")
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!93 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim", scope: !55, file: !56, line: 109, type: !94, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !61, !71, !87}
!96 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv", scope: !55, file: !56, line: 113, type: !97, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!97 = !DISubroutineType(types: !98)
!98 = !{!87, !73}
!99 = !DISubprogram(name: "construct", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi", scope: !55, file: !56, line: 129, type: !100, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !61, !71, !83}
!102 = !DISubprogram(name: "destroy", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi", scope: !55, file: !56, line: 133, type: !103, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !61, !71}
!105 = !{!106}
!106 = !DITemplateTypeParameter(name: "_Tp", type: !10)
!107 = !DISubprogram(name: "allocator", scope: !52, file: !51, line: 113, type: !108, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DISubprogram(name: "allocator", scope: !52, file: !51, line: 115, type: !112, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !110, !114}
!114 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!116 = !DISubprogram(name: "~allocator", scope: !52, file: !51, line: 121, type: !108, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!117 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !52, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !43, file: !41, line: 177, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !52, file: !51, line: 95, baseType: !88)
!120 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim", scope: !43, file: !41, line: 184, type: !121, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !117, !49, !118}
!123 = !DISubprogram(name: "destroy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi", scope: !43, file: !41, line: 191, type: !124, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !117, !49}
!126 = !DISubprogram(name: "max_size", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_", scope: !43, file: !41, line: 194, type: !127, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DISubroutineType(types: !128)
!128 = !{!118, !114}
!129 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_", scope: !43, file: !41, line: 197, type: !130, isLocal: false, isDefinition: false, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{!114, !114}
!132 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE10_S_on_swapERS1_S3_", scope: !43, file: !41, line: 199, type: !133, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !117, !117}
!135 = !{!136}
!136 = !DITemplateTypeParameter(name: "_Alloc", type: !52)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !138, file: !51, line: 105, baseType: !52)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<int>", scope: !52, file: !51, line: 104, size: 8, elements: !7, templateParams: !139, identifier: "_ZTSNSaIiE6rebindIiEE")
!139 = !{!140}
!140 = !DITemplateTypeParameter(name: "_Tp1", type: !10)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !36, file: !30, line: 82, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !33, file: !30, line: 77, baseType: !49)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !36, file: !30, line: 83, baseType: !142, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !36, file: !30, line: 84, baseType: !142, size: 64, offset: 128)
!145 = !DISubprogram(name: "_Vector_impl", scope: !36, file: !30, line: 86, type: !146, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!149 = !DISubprogram(name: "_Vector_impl", scope: !36, file: !30, line: 90, type: !150, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !148, !152}
!152 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!154 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_", scope: !36, file: !30, line: 101, type: !155, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !148, !157}
!157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !36, size: 64)
!158 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: !33, file: !30, line: 113, type: !159, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !39, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!163 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: !33, file: !30, line: 117, type: !164, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{!152, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!168 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv", scope: !33, file: !30, line: 121, type: !169, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !166}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !33, file: !30, line: 110, baseType: !52)
!172 = !DISubprogram(name: "_Vector_base", scope: !33, file: !30, line: 124, type: !173, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !162}
!175 = !DISubprogram(name: "_Vector_base", scope: !33, file: !30, line: 127, type: !176, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !162, !178}
!178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!180 = !DISubprogram(name: "_Vector_base", scope: !33, file: !30, line: 130, type: !181, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !162, !88}
!183 = !DISubprogram(name: "_Vector_base", scope: !33, file: !30, line: 134, type: !184, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !162, !88, !178}
!186 = !DISubprogram(name: "~_Vector_base", scope: !33, file: !30, line: 159, type: !173, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm", scope: !33, file: !30, line: 167, type: !188, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!142, !162, !88}
!190 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim", scope: !33, file: !30, line: 174, type: !191, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !162, !142, !88}
!193 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm", scope: !33, file: !30, line: 183, type: !181, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!194 = !{!106, !136}
!195 = !DISubprogram(name: "vector", scope: !29, file: !30, line: 253, type: !196, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!199 = !DISubprogram(name: "vector", scope: !29, file: !30, line: 264, type: !200, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !198, !202}
!202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !29, file: !30, line: 238, baseType: !52)
!205 = !DISubprogram(name: "vector", scope: !29, file: !30, line: 303, type: !206, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !198, !208, !209, !202}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !30, line: 236, baseType: !88)
!209 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !29, file: !30, line: 226, baseType: !10)
!212 = !DISubprogram(name: "vector", scope: !29, file: !30, line: 318, type: !213, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !198, !215}
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!217 = !DISubprogram(name: "~vector", scope: !29, file: !30, line: 423, type: !196, isLocal: false, isDefinition: false, scopeLine: 423, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!218 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIiSaIiEEaSERKS1_", scope: !29, file: !30, line: 436, type: !219, isLocal: false, isDefinition: false, scopeLine: 436, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !198, !215}
!221 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 64)
!222 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIiSaIiEE6assignEmRKi", scope: !29, file: !30, line: 488, type: !223, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !198, !208, !209}
!225 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIiSaIiEE5beginEv", scope: !29, file: !30, line: 547, type: !226, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !198}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !29, file: !30, line: 231, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<int *, std::vector<int, std::allocator<int> > >", scope: !44, file: !230, line: 721, size: 64, elements: !231, templateParams: !285, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE")
!230 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator.h", directory: "/tests/g++")
!231 = !{!232, !233, !237, !242, !253, !258, !262, !265, !266, !267, !274, !277, !280, !281, !282}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !229, file: !230, line: 724, baseType: !72, size: 64, flags: DIFlagProtected)
!233 = !DISubprogram(name: "__normal_iterator", scope: !229, file: !230, line: 736, type: !234, isLocal: false, isDefinition: false, scopeLine: 736, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DISubprogram(name: "__normal_iterator", scope: !229, file: !230, line: 740, type: !238, isLocal: false, isDefinition: false, scopeLine: 740, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !236, !240}
!240 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!242 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv", scope: !229, file: !230, line: 753, type: !243, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !251}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !229, file: !230, line: 733, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !248, file: !247, line: 184, baseType: !75)
!247 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_types.h", directory: "/tests/g++")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<int *>", scope: !6, file: !247, line: 178, size: 8, elements: !7, templateParams: !249, identifier: "_ZTSSt15iterator_traitsIPiE")
!249 = !{!250}
!250 = !DITemplateTypeParameter(name: "_Iterator", type: !72)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!253 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEptEv", scope: !229, file: !230, line: 757, type: !254, isLocal: false, isDefinition: false, scopeLine: 757, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !251}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !229, file: !230, line: 734, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !248, file: !247, line: 183, baseType: !72)
!258 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv", scope: !229, file: !230, line: 761, type: !259, isLocal: false, isDefinition: false, scopeLine: 761, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !236}
!261 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !229, size: 64)
!262 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEi", scope: !229, file: !230, line: 768, type: !263, isLocal: false, isDefinition: false, scopeLine: 768, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!229, !236, !10}
!265 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv", scope: !229, file: !230, line: 773, type: !259, isLocal: false, isDefinition: false, scopeLine: 773, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!266 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEi", scope: !229, file: !230, line: 780, type: !263, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!267 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl", scope: !229, file: !230, line: 785, type: !268, isLocal: false, isDefinition: false, scopeLine: 785, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!245, !251, !270}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !229, file: !230, line: 732, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !248, file: !247, line: 182, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !6, file: !89, line: 197, baseType: !273)
!273 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!274 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEpLEl", scope: !229, file: !230, line: 789, type: !275, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!261, !236, !270}
!277 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl", scope: !229, file: !230, line: 793, type: !278, isLocal: false, isDefinition: false, scopeLine: 793, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!229, !251, !270}
!280 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmIEl", scope: !229, file: !230, line: 797, type: !275, isLocal: false, isDefinition: false, scopeLine: 797, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!281 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl", scope: !229, file: !230, line: 801, type: !278, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!282 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv", scope: !229, file: !230, line: 805, type: !283, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{!240, !251}
!285 = !{!250, !286}
!286 = !DITemplateTypeParameter(name: "_Container", type: !29)
!287 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIiSaIiEE5beginEv", scope: !29, file: !30, line: 556, type: !288, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !292}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !29, file: !30, line: 233, baseType: !291)
!291 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const int *, std::vector<int, std::allocator<int> > >", scope: !44, file: !230, line: 721, flags: DIFlagFwdDecl, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE")
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!293 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIiSaIiEE3endEv", scope: !29, file: !30, line: 565, type: !226, isLocal: false, isDefinition: false, scopeLine: 565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!294 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIiSaIiEE3endEv", scope: !29, file: !30, line: 574, type: !288, isLocal: false, isDefinition: false, scopeLine: 574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!295 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIiSaIiEE6rbeginEv", scope: !29, file: !30, line: 583, type: !296, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !198}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !29, file: !30, line: 235, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<int *, std::vector<int, std::allocator<int> > > >", scope: !6, file: !230, line: 97, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEE")
!300 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIiSaIiEE6rbeginEv", scope: !29, file: !30, line: 592, type: !301, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !292}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !29, file: !30, line: 234, baseType: !304)
!304 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const int *, std::vector<int, std::allocator<int> > > >", scope: !6, file: !230, line: 97, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE")
!305 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIiSaIiEE4rendEv", scope: !29, file: !30, line: 601, type: !296, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!306 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIiSaIiEE4rendEv", scope: !29, file: !30, line: 610, type: !301, isLocal: false, isDefinition: false, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!307 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIiSaIiEE4sizeEv", scope: !29, file: !30, line: 654, type: !308, isLocal: false, isDefinition: false, scopeLine: 654, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{!208, !292}
!310 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIiSaIiEE8max_sizeEv", scope: !29, file: !30, line: 659, type: !308, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!311 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIiSaIiEE6resizeEmi", scope: !29, file: !30, line: 713, type: !312, isLocal: false, isDefinition: false, scopeLine: 713, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !198, !208, !211}
!314 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIiSaIiEE8capacityEv", scope: !29, file: !30, line: 734, type: !308, isLocal: false, isDefinition: false, scopeLine: 734, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!315 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIiSaIiEE5emptyEv", scope: !29, file: !30, line: 743, type: !316, isLocal: false, isDefinition: false, scopeLine: 743, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !292}
!318 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!319 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIiSaIiEE7reserveEm", scope: !29, file: !30, line: 764, type: !320, isLocal: false, isDefinition: false, scopeLine: 764, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !198, !208}
!322 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIiSaIiEEixEm", scope: !29, file: !30, line: 779, type: !323, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !198, !208}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !29, file: !30, line: 229, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !43, file: !41, line: 175, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !52, file: !51, line: 99, baseType: !75)
!328 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIiSaIiEEixEm", scope: !29, file: !30, line: 794, type: !329, isLocal: false, isDefinition: false, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !292, !208}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !29, file: !30, line: 230, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !43, file: !41, line: 176, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !52, file: !51, line: 100, baseType: !83)
!334 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIiSaIiEE14_M_range_checkEm", scope: !29, file: !30, line: 800, type: !335, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !292, !208}
!337 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIiSaIiEE2atEm", scope: !29, file: !30, line: 822, type: !323, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!338 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIiSaIiEE2atEm", scope: !29, file: !30, line: 840, type: !329, isLocal: false, isDefinition: false, scopeLine: 840, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!339 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIiSaIiEE5frontEv", scope: !29, file: !30, line: 851, type: !340, isLocal: false, isDefinition: false, scopeLine: 851, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!340 = !DISubroutineType(types: !341)
!341 = !{!325, !198}
!342 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIiSaIiEE5frontEv", scope: !29, file: !30, line: 859, type: !343, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!331, !292}
!345 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIiSaIiEE4backEv", scope: !29, file: !30, line: 867, type: !340, isLocal: false, isDefinition: false, scopeLine: 867, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!346 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIiSaIiEE4backEv", scope: !29, file: !30, line: 875, type: !343, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!347 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIiSaIiEE4dataEv", scope: !29, file: !30, line: 890, type: !348, isLocal: false, isDefinition: false, scopeLine: 890, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !198}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !29, file: !30, line: 227, baseType: !142)
!351 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIiSaIiEE4dataEv", scope: !29, file: !30, line: 898, type: !352, isLocal: false, isDefinition: false, scopeLine: 898, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !292}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !29, file: !30, line: 228, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !43, file: !41, line: 173, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !52, file: !51, line: 98, baseType: !80)
!357 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIiSaIiEE9push_backERKi", scope: !29, file: !30, line: 913, type: !358, isLocal: false, isDefinition: false, scopeLine: 913, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !198, !209}
!360 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIiSaIiEE8pop_backEv", scope: !29, file: !30, line: 949, type: !196, isLocal: false, isDefinition: false, scopeLine: 949, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!361 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi", scope: !29, file: !30, line: 998, type: !362, isLocal: false, isDefinition: false, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!228, !198, !228, !209}
!364 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi", scope: !29, file: !30, line: 1072, type: !365, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !198, !228, !208, !209}
!367 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EE", scope: !29, file: !30, line: 1149, type: !368, isLocal: false, isDefinition: false, scopeLine: 1149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!368 = !DISubroutineType(types: !369)
!369 = !{!228, !198, !228}
!370 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EES5_", scope: !29, file: !30, line: 1180, type: !371, isLocal: false, isDefinition: false, scopeLine: 1180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!371 = !DISubroutineType(types: !372)
!372 = !{!228, !198, !228, !228}
!373 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIiSaIiEE4swapERS1_", scope: !29, file: !30, line: 1194, type: !374, isLocal: false, isDefinition: false, scopeLine: 1194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !198, !221}
!376 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIiSaIiEE5clearEv", scope: !29, file: !30, line: 1211, type: !196, isLocal: false, isDefinition: false, scopeLine: 1211, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!377 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi", scope: !29, file: !30, line: 1298, type: !223, isLocal: false, isDefinition: false, scopeLine: 1298, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!378 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi", scope: !29, file: !30, line: 1354, type: !223, isLocal: false, isDefinition: false, scopeLine: 1354, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!379 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi", scope: !29, file: !30, line: 1395, type: !365, isLocal: false, isDefinition: false, scopeLine: 1395, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!380 = !DISubprogram(name: "_M_insert_aux", linkageName: "_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi", scope: !29, file: !30, line: 1409, type: !381, isLocal: false, isDefinition: false, scopeLine: 1409, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !198, !228, !209}
!383 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc", scope: !29, file: !30, line: 1422, type: !384, isLocal: false, isDefinition: false, scopeLine: 1422, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{!386, !292, !208, !387}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !29, file: !30, line: 236, baseType: !88)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!390 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi", scope: !29, file: !30, line: 1436, type: !391, isLocal: false, isDefinition: false, scopeLine: 1436, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !198, !350}
!393 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIiSaIiEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EE", scope: !29, file: !30, line: 1443, type: !368, isLocal: false, isDefinition: false, scopeLine: 1443, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!394 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIiSaIiEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EES5_", scope: !29, file: !30, line: 1446, type: !371, isLocal: false, isDefinition: false, scopeLine: 1446, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!395 = !DISubprogram(name: "test", linkageName: "_ZN6mspace1A4testEv", scope: !19, file: !1, line: 20, type: !396, isLocal: false, isDefinition: false, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!399 = !DISubprogram(name: "nimas", linkageName: "_ZN6mspace1A5nimasEv", scope: !19, file: !1, line: 21, type: !396, isLocal: false, isDefinition: false, scopeLine: 21, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!400 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !15, baseType: !401, offset: 320)
!401 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "C", scope: !16, file: !1, line: 24, size: 32, elements: !402, identifier: "_ZTSN6mspace1CE")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !401, file: !1, line: 26, baseType: !10, size: 32, flags: DIFlagPublic)
!404 = !DISubprogram(name: "test", linkageName: "_ZN6mspace1B4testEv", scope: !15, file: !1, line: 30, type: !405, isLocal: false, isDefinition: false, scopeLine: 30, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!408 = !DISubprogram(name: "testb", linkageName: "_ZN6mspace1B5testbEv", scope: !15, file: !1, line: 31, type: !405, isLocal: false, isDefinition: false, scopeLine: 31, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!409 = !DISubprogram(name: "nimas", linkageName: "_ZN6mspace1B5nimasEv", scope: !15, file: !1, line: 32, type: !405, isLocal: false, isDefinition: false, scopeLine: 32, containingType: !15, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "B", file: !1, line: 62, size: 384, elements: !413, vtableHolder: !415, identifier: "_ZTS1B")
!413 = !{!414, !425, !429, !433, !434}
!414 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !412, baseType: !415, flags: DIFlagPublic)
!415 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !1, line: 48, size: 320, elements: !416, vtableHolder: !415, identifier: "_ZTS1A")
!416 = !{!21, !417, !418, !419, !420, !424}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !415, file: !1, line: 50, baseType: !10, size: 32, offset: 64, flags: DIFlagPublic)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !415, file: !1, line: 51, baseType: !10, size: 32, offset: 96, flags: DIFlagPublic)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !415, file: !1, line: 52, baseType: !29, size: 192, offset: 128, flags: DIFlagPublic)
!420 = !DISubprogram(name: "test", linkageName: "_ZN1A4testEv", scope: !415, file: !1, line: 54, type: !421, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!424 = !DISubprogram(name: "nimas", linkageName: "_ZN1A5nimasEv", scope: !415, file: !1, line: 55, type: !421, isLocal: false, isDefinition: false, scopeLine: 55, containingType: !415, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!425 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !412, baseType: !426, offset: 320)
!426 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "C", file: !1, line: 58, size: 32, elements: !427, identifier: "_ZTS1C")
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !426, file: !1, line: 60, baseType: !10, size: 32, flags: DIFlagPublic)
!429 = !DISubprogram(name: "test", linkageName: "_ZN1B4testEv", scope: !412, file: !1, line: 64, type: !430, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!433 = !DISubprogram(name: "testb", linkageName: "_ZN1B5testbEv", scope: !412, file: !1, line: 65, type: !430, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!434 = !DISubprogram(name: "nimas", linkageName: "_ZN1B5nimasEv", scope: !412, file: !1, line: 66, type: !430, isLocal: false, isDefinition: false, scopeLine: 66, containingType: !412, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!439 = !{!440, !446, !451, !456, !460, !462, !464, !466, !468, !475, !481, !486, !490, !494, !498, !505, !509, !511, !515, !521, !525, !530, !532, !534, !538, !542, !546, !548, !552, !556, !558, !562, !564, !566, !570, !574, !578, !582, !586, !588, !590, !596, !600, !604, !608, !610, !612, !616, !620, !621, !622, !623, !624, !625, !629, !630, !631}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !441, file: !445, line: 98)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !442, line: 48, baseType: !443)
!442 = !DIFile(filename: "/usr/include/stdio.h", directory: "/tests/g++")
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !444, line: 241, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!444 = !DIFile(filename: "/usr/include/libio.h", directory: "/tests/g++")
!445 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdio", directory: "/tests/g++")
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !447, file: !445, line: 99)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !442, line: 110, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !449, line: 25, baseType: !450)
!449 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/tests/g++")
!450 = !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !452, file: !445, line: 101)
!452 = !DISubprogram(name: "clearerr", scope: !442, file: !442, line: 826, type: !453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !457, file: !445, line: 102)
!457 = !DISubprogram(name: "fclose", scope: !442, file: !442, line: 237, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{!10, !455}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !461, file: !445, line: 103)
!461 = !DISubprogram(name: "feof", scope: !442, file: !442, line: 828, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !463, file: !445, line: 104)
!463 = !DISubprogram(name: "ferror", scope: !442, file: !442, line: 830, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !465, file: !445, line: 105)
!465 = !DISubprogram(name: "fflush", scope: !442, file: !442, line: 242, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !467, file: !445, line: 106)
!467 = !DISubprogram(name: "fgetc", scope: !442, file: !442, line: 531, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !469, file: !445, line: 107)
!469 = !DISubprogram(name: "fgetpos", scope: !442, file: !442, line: 798, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!10, !472, !473}
!472 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !455)
!473 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !476, file: !445, line: 108)
!476 = !DISubprogram(name: "fgets", scope: !442, file: !442, line: 622, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !480, !10, !472}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !479)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !482, file: !445, line: 109)
!482 = !DISubprogram(name: "fopen", scope: !442, file: !442, line: 272, type: !483, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!455, !485, !485}
!485 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !387)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !487, file: !445, line: 110)
!487 = !DISubprogram(name: "fprintf", scope: !442, file: !442, line: 356, type: !488, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!488 = !DISubroutineType(types: !489)
!489 = !{!10, !472, !485, null}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !491, file: !445, line: 111)
!491 = !DISubprogram(name: "fputc", scope: !442, file: !442, line: 573, type: !492, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!492 = !DISubroutineType(types: !493)
!493 = !{!10, !10, !455}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !495, file: !445, line: 112)
!495 = !DISubprogram(name: "fputs", scope: !442, file: !442, line: 689, type: !496, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!496 = !DISubroutineType(types: !497)
!497 = !{!10, !485, !472}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !499, file: !445, line: 113)
!499 = !DISubprogram(name: "fread", scope: !442, file: !442, line: 709, type: !500, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !504, !502, !502, !472}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !503, line: 62, baseType: !90)
!503 = !DIFile(filename: "/LLVM_ROOT/build/lib/clang/5.0.1/include/stddef.h", directory: "/tests/g++")
!504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !437)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !506, file: !445, line: 114)
!506 = !DISubprogram(name: "freopen", scope: !442, file: !442, line: 278, type: !507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{!455, !485, !485, !472}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !510, file: !445, line: 115)
!510 = !DISubprogram(name: "fscanf", scope: !442, file: !442, line: 425, type: !488, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !512, file: !445, line: 116)
!512 = !DISubprogram(name: "fseek", scope: !442, file: !442, line: 749, type: !513, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DISubroutineType(types: !514)
!514 = !{!10, !455, !273, !10}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !516, file: !445, line: 117)
!516 = !DISubprogram(name: "fsetpos", scope: !442, file: !442, line: 803, type: !517, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DISubroutineType(types: !518)
!518 = !{!10, !455, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !522, file: !445, line: 118)
!522 = !DISubprogram(name: "ftell", scope: !442, file: !442, line: 754, type: !523, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubroutineType(types: !524)
!524 = !{!273, !455}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !526, file: !445, line: 119)
!526 = !DISubprogram(name: "fwrite", scope: !442, file: !442, line: 715, type: !527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{!502, !529, !502, !502, !472}
!529 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !531, file: !445, line: 120)
!531 = !DISubprogram(name: "getc", scope: !442, file: !442, line: 532, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !533, file: !445, line: 121)
!533 = !DISubprogram(name: "getchar", scope: !442, file: !442, line: 538, type: !24, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !535, file: !445, line: 124)
!535 = !DISubprogram(name: "gets", scope: !442, file: !442, line: 638, type: !536, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!536 = !DISubroutineType(types: !537)
!537 = !{!479, !479}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !539, file: !445, line: 126)
!539 = !DISubprogram(name: "perror", scope: !442, file: !442, line: 846, type: !540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !387}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !543, file: !445, line: 127)
!543 = !DISubprogram(name: "printf", scope: !442, file: !442, line: 362, type: !544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!544 = !DISubroutineType(types: !545)
!545 = !{!10, !485, null}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !547, file: !445, line: 128)
!547 = !DISubprogram(name: "putc", scope: !442, file: !442, line: 574, type: !492, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !549, file: !445, line: 129)
!549 = !DISubprogram(name: "putchar", scope: !442, file: !442, line: 580, type: !550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!10, !10}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !553, file: !445, line: 130)
!553 = !DISubprogram(name: "puts", scope: !442, file: !442, line: 695, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!10, !387}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !557, file: !445, line: 131)
!557 = !DISubprogram(name: "remove", scope: !442, file: !442, line: 178, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !559, file: !445, line: 132)
!559 = !DISubprogram(name: "rename", scope: !442, file: !442, line: 180, type: !560, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{!10, !387, !387}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !563, file: !445, line: 133)
!563 = !DISubprogram(name: "rewind", scope: !442, file: !442, line: 759, type: !453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !565, file: !445, line: 134)
!565 = !DISubprogram(name: "scanf", scope: !442, file: !442, line: 431, type: !544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !567, file: !445, line: 135)
!567 = !DISubprogram(name: "setbuf", scope: !442, file: !442, line: 332, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !472, !480}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !571, file: !445, line: 136)
!571 = !DISubprogram(name: "setvbuf", scope: !442, file: !442, line: 336, type: !572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!10, !472, !480, !10, !502}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !575, file: !445, line: 137)
!575 = !DISubprogram(name: "sprintf", scope: !442, file: !442, line: 364, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!10, !480, !485, null}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !579, file: !445, line: 138)
!579 = !DISubprogram(name: "sscanf", scope: !442, file: !442, line: 433, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!10, !485, !485, null}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !583, file: !445, line: 139)
!583 = !DISubprogram(name: "tmpfile", scope: !442, file: !442, line: 195, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!455}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !587, file: !445, line: 141)
!587 = !DISubprogram(name: "tmpnam", scope: !442, file: !442, line: 209, type: !536, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !589, file: !445, line: 143)
!589 = !DISubprogram(name: "ungetc", scope: !442, file: !442, line: 702, type: !492, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !591, file: !445, line: 144)
!591 = !DISubprogram(name: "vfprintf", scope: !442, file: !442, line: 371, type: !592, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{!10, !472, !485, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, flags: DIFlagFwdDecl, identifier: "_ZTS13__va_list_tag")
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !597, file: !445, line: 145)
!597 = !DISubprogram(name: "vprintf", scope: !442, file: !442, line: 377, type: !598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DISubroutineType(types: !599)
!599 = !{!10, !485, !594}
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !601, file: !445, line: 146)
!601 = !DISubprogram(name: "vsprintf", scope: !442, file: !442, line: 379, type: !602, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubroutineType(types: !603)
!603 = !{!10, !480, !485, !594}
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !605, file: !445, line: 175)
!605 = !DISubprogram(name: "snprintf", scope: !442, file: !442, line: 386, type: !606, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DISubroutineType(types: !607)
!607 = !{!10, !480, !502, !485, null}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !609, file: !445, line: 176)
!609 = !DISubprogram(name: "vfscanf", scope: !442, file: !442, line: 471, type: !592, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !611, file: !445, line: 177)
!611 = !DISubprogram(name: "vscanf", scope: !442, file: !442, line: 479, type: !598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !613, file: !445, line: 178)
!613 = !DISubprogram(name: "vsnprintf", scope: !442, file: !442, line: 390, type: !614, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!614 = !DISubroutineType(types: !615)
!615 = !{!10, !480, !502, !485, !594}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !617, file: !445, line: 179)
!617 = !DISubprogram(name: "vsscanf", scope: !442, file: !442, line: 483, type: !618, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!618 = !DISubroutineType(types: !619)
!619 = !{!10, !485, !485, !594}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !605, file: !445, line: 185)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !609, file: !445, line: 186)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !611, file: !445, line: 187)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !613, file: !445, line: 188)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !617, file: !445, line: 189)
!625 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !626, entity: !627, file: !628, line: 56)
!626 = !DINamespace(name: "__gnu_debug", scope: null)
!627 = !DINamespace(name: "__debug", scope: !6)
!628 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/debug/debug.h", directory: "/tests/g++")
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !88, file: !56, line: 44)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !272, file: !56, line: 45)
!631 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !6, file: !1, line: 4)
!632 = !{i32 2, !"Dwarf Version", i32 4}
!633 = !{i32 2, !"Debug Info Version", i32 3}
!634 = !{i32 1, !"wchar_size", i32 4}
!635 = !{!"clang version 5.0.1 (tags/RELEASE_501/final 322011)"}
!636 = distinct !DISubprogram(name: "test", linkageName: "_Z4testR1A", scope: !1, file: !1, line: 77, type: !637, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !7)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639}
!639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !415, size: 64)
!640 = !DILocalVariable(name: "x", arg: 1, scope: !636, file: !1, line: 77, type: !639)
!641 = !DIExpression()
!642 = !DILocation(line: 77, column: 14, scope: !636)
!643 = !DILocation(line: 78, column: 5, scope: !636)
!644 = !DILocation(line: 78, column: 7, scope: !636)
!645 = !DILocation(line: 79, column: 1, scope: !636)
!646 = distinct !DISubprogram(name: "test", linkageName: "_ZN1A4testEv", scope: !415, file: !1, line: 54, type: !421, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !420, variables: !7)
!647 = !DILocalVariable(name: "this", arg: 1, scope: !646, type: !435, flags: DIFlagArtificial | DIFlagObjectPointer)
!648 = !DILocation(line: 0, scope: !646)
!649 = !DILocation(line: 54, column: 22, scope: !646)
!650 = !DILocation(line: 54, column: 36, scope: !646)
!651 = distinct !DISubprogram(name: "tests", linkageName: "_Z5testsv", scope: !1, file: !1, line: 80, type: !652, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !7)
!652 = !DISubroutineType(types: !653)
!653 = !{null}
!654 = !DILocalVariable(name: "x", scope: !651, file: !1, line: 81, type: !19)
!655 = !DILocation(line: 81, column: 15, scope: !651)
!656 = !DILocalVariable(name: "d", scope: !651, file: !1, line: 82, type: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "D", scope: !16, file: !1, line: 35, size: 384, elements: !658, identifier: "_ZTSN6mspace1DE")
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !657, file: !1, line: 37, baseType: !19, size: 320, flags: DIFlagPublic)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !657, file: !1, line: 38, baseType: !401, size: 32, offset: 320, flags: DIFlagPublic)
!661 = !DILocation(line: 82, column: 15, scope: !651)
!662 = !DILocalVariable(name: "_b", scope: !651, file: !1, line: 83, type: !15)
!663 = !DILocation(line: 83, column: 15, scope: !651)
!664 = !DILocalVariable(name: "b", scope: !651, file: !1, line: 84, type: !14)
!665 = !DILocation(line: 84, column: 16, scope: !651)
!666 = !DILocation(line: 84, column: 20, scope: !651)
!667 = !DILocalVariable(name: "c", scope: !651, file: !1, line: 85, type: !14)
!668 = !DILocation(line: 85, column: 16, scope: !651)
!669 = !DILocation(line: 85, column: 20, scope: !651)
!670 = !DILocation(line: 86, column: 5, scope: !651)
!671 = !DILocation(line: 86, column: 8, scope: !651)
!672 = !DILocation(line: 87, column: 8, scope: !651)
!673 = !DILocalVariable(name: "cao", scope: !651, file: !1, line: 88, type: !410)
!674 = !DILocation(line: 88, column: 16, scope: !651)
!675 = !DILocation(line: 88, column: 47, scope: !651)
!676 = !DILocation(line: 89, column: 1, scope: !651)
!677 = distinct !DISubprogram(name: "A", linkageName: "_ZN6mspace1AC2Ev", scope: !19, file: !1, line: 14, type: !396, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !678, variables: !7)
!678 = !DISubprogram(name: "A", scope: !19, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!679 = !DILocalVariable(name: "this", arg: 1, scope: !677, type: !410, flags: DIFlagArtificial | DIFlagObjectPointer)
!680 = !DILocation(line: 0, scope: !677)
!681 = !DILocation(line: 14, column: 11, scope: !677)
!682 = distinct !DISubprogram(name: "D", linkageName: "_ZN6mspace1DC2Ev", scope: !657, file: !1, line: 35, type: !683, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !686, variables: !7)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!686 = !DISubprogram(name: "D", scope: !657, type: !683, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!687 = !DILocalVariable(name: "this", arg: 1, scope: !682, type: !688, flags: DIFlagArtificial | DIFlagObjectPointer)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!689 = !DILocation(line: 0, scope: !682)
!690 = !DILocation(line: 35, column: 11, scope: !682)
!691 = distinct !DISubprogram(name: "B", linkageName: "_ZN6mspace1BC2Ev", scope: !15, file: !1, line: 28, type: !405, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !692, variables: !7)
!692 = !DISubprogram(name: "B", scope: !15, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!693 = !DILocalVariable(name: "this", arg: 1, scope: !691, type: !14, flags: DIFlagArtificial | DIFlagObjectPointer)
!694 = !DILocation(line: 0, scope: !691)
!695 = !DILocation(line: 28, column: 11, scope: !691)
!696 = distinct !DISubprogram(name: "testb", linkageName: "_ZN6mspace1B5testbEv", scope: !15, file: !1, line: 31, type: !405, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !408, variables: !7)
!697 = !DILocalVariable(name: "this", arg: 1, scope: !696, type: !14, flags: DIFlagArtificial | DIFlagObjectPointer)
!698 = !DILocation(line: 0, scope: !696)
!699 = !DILocation(line: 31, column: 23, scope: !696)
!700 = distinct !DISubprogram(name: "nimas", linkageName: "_ZN6mspace1B5nimasEv", scope: !15, file: !1, line: 32, type: !405, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !409, variables: !7)
!701 = !DILocalVariable(name: "this", arg: 1, scope: !700, type: !14, flags: DIFlagArtificial | DIFlagObjectPointer)
!702 = !DILocation(line: 0, scope: !700)
!703 = !DILocation(line: 32, column: 23, scope: !700)
!704 = !DILocation(line: 32, column: 44, scope: !700)
!705 = distinct !DISubprogram(name: "~B", linkageName: "_ZN6mspace1BD2Ev", scope: !15, file: !1, line: 28, type: !405, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !706, variables: !7)
!706 = !DISubprogram(name: "~B", scope: !15, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!707 = !DILocalVariable(name: "this", arg: 1, scope: !705, type: !14, flags: DIFlagArtificial | DIFlagObjectPointer)
!708 = !DILocation(line: 0, scope: !705)
!709 = !DILocation(line: 28, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !1, line: 28, column: 11)
!711 = !DILocation(line: 28, column: 11, scope: !705)
!712 = distinct !DISubprogram(name: "~D", linkageName: "_ZN6mspace1DD2Ev", scope: !657, file: !1, line: 35, type: !683, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !713, variables: !7)
!713 = !DISubprogram(name: "~D", scope: !657, type: !683, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!714 = !DILocalVariable(name: "this", arg: 1, scope: !712, type: !688, flags: DIFlagArtificial | DIFlagObjectPointer)
!715 = !DILocation(line: 0, scope: !712)
!716 = !DILocation(line: 35, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !1, line: 35, column: 11)
!718 = !DILocation(line: 35, column: 11, scope: !712)
!719 = distinct !DISubprogram(name: "~A", linkageName: "_ZN6mspace1AD2Ev", scope: !19, file: !1, line: 14, type: !396, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !720, variables: !7)
!720 = !DISubprogram(name: "~A", scope: !19, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!721 = !DILocalVariable(name: "this", arg: 1, scope: !719, type: !410, flags: DIFlagArtificial | DIFlagObjectPointer)
!722 = !DILocation(line: 0, scope: !719)
!723 = !DILocation(line: 14, column: 11, scope: !719)
!724 = !DILocation(line: 14, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !1, line: 14, column: 11)
!726 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 90, type: !24, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !7)
!727 = !DILocalVariable(name: "x", scope: !726, file: !1, line: 91, type: !415)
!728 = !DILocation(line: 91, column: 7, scope: !726)
!729 = !DILocation(line: 92, column: 7, scope: !726)
!730 = !DILocation(line: 92, column: 19, scope: !726)
!731 = !DILocation(line: 92, column: 9, scope: !726)
!732 = !DILocation(line: 92, column: 24, scope: !726)
!733 = !DILocation(line: 92, column: 36, scope: !726)
!734 = !DILocation(line: 92, column: 26, scope: !726)
!735 = !DILocation(line: 92, column: 41, scope: !726)
!736 = !DILocation(line: 92, column: 53, scope: !726)
!737 = !DILocation(line: 92, column: 43, scope: !726)
!738 = !DILocation(line: 92, column: 58, scope: !726)
!739 = !DILocation(line: 92, column: 70, scope: !726)
!740 = !DILocation(line: 92, column: 60, scope: !726)
!741 = !DILocalVariable(name: "d", scope: !726, file: !1, line: 93, type: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "D", file: !1, line: 69, size: 384, elements: !743, identifier: "_ZTS1D")
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !742, file: !1, line: 71, baseType: !415, size: 320, flags: DIFlagPublic)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !742, file: !1, line: 72, baseType: !426, size: 32, offset: 320, flags: DIFlagPublic)
!746 = !DILocation(line: 93, column: 7, scope: !726)
!747 = !DILocalVariable(name: "_b", scope: !726, file: !1, line: 94, type: !412)
!748 = !DILocation(line: 94, column: 7, scope: !726)
!749 = !DILocalVariable(name: "v", scope: !726, file: !1, line: 95, type: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ZX", file: !1, line: 43, size: 32, elements: !751, identifier: "_ZTS2ZX")
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !750, file: !1, line: 45, baseType: !10, size: 32, flags: DIFlagPublic)
!753 = !DISubprogram(name: "test", linkageName: "_ZN2ZX4testEv", scope: !750, file: !1, line: 46, type: !754, isLocal: false, isDefinition: false, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!757 = !DILocation(line: 95, column: 8, scope: !726)
!758 = !DILocation(line: 96, column: 7, scope: !726)
!759 = !DILocalVariable(name: "b", scope: !726, file: !1, line: 97, type: !411)
!760 = !DILocation(line: 97, column: 8, scope: !726)
!761 = !DILocation(line: 97, column: 12, scope: !726)
!762 = !DILocalVariable(name: "c", scope: !726, file: !1, line: 98, type: !411)
!763 = !DILocation(line: 98, column: 8, scope: !726)
!764 = !DILocation(line: 98, column: 12, scope: !726)
!765 = !DILocation(line: 99, column: 5, scope: !726)
!766 = !DILocation(line: 99, column: 8, scope: !726)
!767 = !DILocation(line: 100, column: 8, scope: !726)
!768 = !DILocalVariable(name: "cao", scope: !726, file: !1, line: 101, type: !435)
!769 = !DILocation(line: 101, column: 8, scope: !726)
!770 = !DILocation(line: 101, column: 31, scope: !726)
!771 = !DILocalVariable(name: "xx", scope: !726, file: !1, line: 102, type: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "STDClass", file: !1, line: 5, size: 32, elements: !773, identifier: "_ZTS8STDClass")
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !772, file: !1, line: 6, baseType: !10, size: 32)
!775 = !DILocation(line: 102, column: 14, scope: !726)
!776 = !DILocation(line: 103, column: 5, scope: !726)
!777 = !DILocation(line: 104, column: 1, scope: !726)
!778 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !415, file: !1, line: 48, type: !421, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !779, variables: !7)
!779 = !DISubprogram(name: "A", scope: !415, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!780 = !DILocalVariable(name: "this", arg: 1, scope: !778, type: !435, flags: DIFlagArtificial | DIFlagObjectPointer)
!781 = !DILocation(line: 0, scope: !778)
!782 = !DILocation(line: 48, column: 11, scope: !778)
!783 = distinct !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIiSaIiEE9push_backERKi", scope: !29, file: !30, line: 913, type: !358, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !357, variables: !7)
!784 = !DILocalVariable(name: "this", arg: 1, scope: !783, type: !785, flags: DIFlagArtificial | DIFlagObjectPointer)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!786 = !DILocation(line: 0, scope: !783)
!787 = !DILocalVariable(name: "__x", arg: 2, scope: !783, file: !30, line: 913, type: !209)
!788 = !DILocation(line: 913, column: 35, scope: !783)
!789 = !DILocation(line: 915, column: 12, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !30, line: 915, column: 6)
!791 = !DILocation(line: 915, column: 20, scope: !790)
!792 = !DILocation(line: 915, column: 39, scope: !790)
!793 = !DILocation(line: 915, column: 47, scope: !790)
!794 = !DILocation(line: 915, column: 30, scope: !790)
!795 = !DILocation(line: 915, column: 6, scope: !783)
!796 = !DILocation(line: 917, column: 37, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !30, line: 916, column: 4)
!798 = !DILocation(line: 917, column: 31, scope: !797)
!799 = !DILocation(line: 917, column: 52, scope: !797)
!800 = !DILocation(line: 917, column: 60, scope: !797)
!801 = !DILocation(line: 918, column: 31, scope: !797)
!802 = !DILocation(line: 917, column: 6, scope: !797)
!803 = !DILocation(line: 919, column: 14, scope: !797)
!804 = !DILocation(line: 919, column: 22, scope: !797)
!805 = !DILocation(line: 919, column: 6, scope: !797)
!806 = !DILocation(line: 920, column: 4, scope: !797)
!807 = !DILocation(line: 925, column: 18, scope: !790)
!808 = !DILocation(line: 925, column: 25, scope: !790)
!809 = !DILocation(line: 925, column: 4, scope: !790)
!810 = !DILocation(line: 927, column: 7, scope: !783)
!811 = distinct !DISubprogram(name: "D", linkageName: "_ZN1DC2Ev", scope: !742, file: !1, line: 69, type: !812, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !815, variables: !7)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!815 = !DISubprogram(name: "D", scope: !742, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!816 = !DILocalVariable(name: "this", arg: 1, scope: !811, type: !817, flags: DIFlagArtificial | DIFlagObjectPointer)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!818 = !DILocation(line: 0, scope: !811)
!819 = !DILocation(line: 69, column: 11, scope: !811)
!820 = distinct !DISubprogram(name: "B", linkageName: "_ZN1BC2Ev", scope: !412, file: !1, line: 62, type: !430, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !821, variables: !7)
!821 = !DISubprogram(name: "B", scope: !412, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!822 = !DILocalVariable(name: "this", arg: 1, scope: !820, type: !411, flags: DIFlagArtificial | DIFlagObjectPointer)
!823 = !DILocation(line: 0, scope: !820)
!824 = !DILocation(line: 62, column: 11, scope: !820)
!825 = distinct !DISubprogram(name: "test", linkageName: "_ZN2ZX4testEv", scope: !750, file: !1, line: 46, type: !754, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !753, variables: !7)
!826 = !DILocalVariable(name: "this", arg: 1, scope: !825, type: !827, flags: DIFlagArtificial | DIFlagObjectPointer)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!828 = !DILocation(line: 0, scope: !825)
!829 = !DILocation(line: 46, column: 22, scope: !825)
!830 = !DILocation(line: 46, column: 34, scope: !825)
!831 = distinct !DISubprogram(name: "testb", linkageName: "_ZN1B5testbEv", scope: !412, file: !1, line: 65, type: !430, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !433, variables: !7)
!832 = !DILocalVariable(name: "this", arg: 1, scope: !831, type: !411, flags: DIFlagArtificial | DIFlagObjectPointer)
!833 = !DILocation(line: 0, scope: !831)
!834 = !DILocation(line: 65, column: 23, scope: !831)
!835 = distinct !DISubprogram(name: "nimas", linkageName: "_ZN1B5nimasEv", scope: !412, file: !1, line: 66, type: !430, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !434, variables: !7)
!836 = !DILocalVariable(name: "this", arg: 1, scope: !835, type: !411, flags: DIFlagArtificial | DIFlagObjectPointer)
!837 = !DILocation(line: 0, scope: !835)
!838 = !DILocation(line: 66, column: 23, scope: !835)
!839 = !DILocation(line: 66, column: 44, scope: !835)
!840 = distinct !DISubprogram(name: "~B", linkageName: "_ZN1BD2Ev", scope: !412, file: !1, line: 62, type: !430, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !841, variables: !7)
!841 = !DISubprogram(name: "~B", scope: !412, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!842 = !DILocalVariable(name: "this", arg: 1, scope: !840, type: !411, flags: DIFlagArtificial | DIFlagObjectPointer)
!843 = !DILocation(line: 0, scope: !840)
!844 = !DILocation(line: 62, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !1, line: 62, column: 11)
!846 = !DILocation(line: 62, column: 11, scope: !840)
!847 = distinct !DISubprogram(name: "~D", linkageName: "_ZN1DD2Ev", scope: !742, file: !1, line: 69, type: !812, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !848, variables: !7)
!848 = !DISubprogram(name: "~D", scope: !742, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!849 = !DILocalVariable(name: "this", arg: 1, scope: !847, type: !817, flags: DIFlagArtificial | DIFlagObjectPointer)
!850 = !DILocation(line: 0, scope: !847)
!851 = !DILocation(line: 69, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !1, line: 69, column: 11)
!853 = !DILocation(line: 69, column: 11, scope: !847)
!854 = distinct !DISubprogram(name: "~A", linkageName: "_ZN1AD2Ev", scope: !415, file: !1, line: 48, type: !421, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !855, variables: !7)
!855 = !DISubprogram(name: "~A", scope: !415, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!856 = !DILocalVariable(name: "this", arg: 1, scope: !854, type: !435, flags: DIFlagArtificial | DIFlagObjectPointer)
!857 = !DILocation(line: 0, scope: !854)
!858 = !DILocation(line: 48, column: 11, scope: !854)
!859 = !DILocation(line: 48, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !1, line: 48, column: 11)
!861 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIiSaIiEEC2Ev", scope: !29, file: !30, line: 253, type: !196, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !195, variables: !7)
!862 = !DILocalVariable(name: "this", arg: 1, scope: !861, type: !785, flags: DIFlagArtificial | DIFlagObjectPointer)
!863 = !DILocation(line: 0, scope: !861)
!864 = !DILocation(line: 257, column: 17, scope: !861)
!865 = !DILocation(line: 257, column: 9, scope: !861)
!866 = !DILocation(line: 257, column: 19, scope: !861)
!867 = distinct !DISubprogram(name: "nimas", linkageName: "_ZN6mspace1A5nimasEv", scope: !19, file: !1, line: 21, type: !396, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !399, variables: !7)
!868 = !DILocalVariable(name: "this", arg: 1, scope: !867, type: !410, flags: DIFlagArtificial | DIFlagObjectPointer)
!869 = !DILocation(line: 0, scope: !867)
!870 = !DILocation(line: 21, column: 31, scope: !867)
!871 = !DILocation(line: 21, column: 49, scope: !867)
!872 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIiSaIiEEC2Ev", scope: !33, file: !30, line: 124, type: !173, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !172, variables: !7)
!873 = !DILocalVariable(name: "this", arg: 1, scope: !872, type: !874, flags: DIFlagArtificial | DIFlagObjectPointer)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!875 = !DILocation(line: 0, scope: !872)
!876 = !DILocation(line: 125, column: 9, scope: !872)
!877 = !DILocation(line: 125, column: 21, scope: !872)
!878 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev", scope: !36, file: !30, line: 86, type: !146, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !145, variables: !7)
!879 = !DILocalVariable(name: "this", arg: 1, scope: !878, type: !880, flags: DIFlagArtificial | DIFlagObjectPointer)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!881 = !DILocation(line: 0, scope: !878)
!882 = !DILocation(line: 88, column: 2, scope: !878)
!883 = !DILocation(line: 87, column: 4, scope: !878)
!884 = !DILocation(line: 87, column: 22, scope: !878)
!885 = !DILocation(line: 87, column: 34, scope: !878)
!886 = !DILocation(line: 87, column: 47, scope: !878)
!887 = !DILocation(line: 88, column: 4, scope: !878)
!888 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIiEC2Ev", scope: !52, file: !51, line: 113, type: !108, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !107, variables: !7)
!889 = !DILocalVariable(name: "this", arg: 1, scope: !888, type: !890, flags: DIFlagArtificial | DIFlagObjectPointer)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!891 = !DILocation(line: 0, scope: !888)
!892 = !DILocation(line: 113, column: 27, scope: !888)
!893 = !DILocation(line: 113, column: 7, scope: !888)
!894 = !DILocation(line: 113, column: 29, scope: !888)
!895 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIiEC2Ev", scope: !55, file: !56, line: 79, type: !59, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !58, variables: !7)
!896 = !DILocalVariable(name: "this", arg: 1, scope: !895, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!898 = !DILocation(line: 0, scope: !895)
!899 = !DILocation(line: 79, column: 47, scope: !895)
!900 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIiSaIiEED2Ev", scope: !29, file: !30, line: 423, type: !196, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !217, variables: !7)
!901 = !DILocalVariable(name: "this", arg: 1, scope: !900, type: !785, flags: DIFlagArtificial | DIFlagObjectPointer)
!902 = !DILocation(line: 0, scope: !900)
!903 = !DILocation(line: 424, column: 29, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !30, line: 424, column: 7)
!905 = !DILocation(line: 424, column: 37, scope: !904)
!906 = !DILocation(line: 424, column: 53, scope: !904)
!907 = !DILocation(line: 424, column: 61, scope: !904)
!908 = !DILocation(line: 425, column: 9, scope: !904)
!909 = !DILocation(line: 424, column: 9, scope: !904)
!910 = !DILocation(line: 425, column: 33, scope: !904)
!911 = !DILocation(line: 425, column: 33, scope: !900)
!912 = distinct !DISubprogram(name: "_Destroy<int *, int>", linkageName: "_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E", scope: !6, file: !913, line: 148, type: !914, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !916, variables: !7)
!913 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_construct.h", directory: "/tests/g++")
!914 = !DISubroutineType(types: !915)
!915 = !{null, !72, !72, !117}
!916 = !{!917, !106}
!917 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !72)
!918 = !DILocalVariable(name: "__first", arg: 1, scope: !912, file: !913, line: 148, type: !72)
!919 = !DILocation(line: 148, column: 31, scope: !912)
!920 = !DILocalVariable(name: "__last", arg: 2, scope: !912, file: !913, line: 148, type: !72)
!921 = !DILocation(line: 148, column: 57, scope: !912)
!922 = !DILocalVariable(arg: 3, scope: !912, file: !913, line: 149, type: !117)
!923 = !DILocation(line: 149, column: 22, scope: !912)
!924 = !DILocation(line: 151, column: 16, scope: !912)
!925 = !DILocation(line: 151, column: 25, scope: !912)
!926 = !DILocation(line: 151, column: 7, scope: !912)
!927 = !DILocation(line: 152, column: 5, scope: !912)
!928 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: !33, file: !30, line: 113, type: !159, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !158, variables: !7)
!929 = !DILocalVariable(name: "this", arg: 1, scope: !928, type: !874, flags: DIFlagArtificial | DIFlagObjectPointer)
!930 = !DILocation(line: 0, scope: !928)
!931 = !DILocation(line: 114, column: 53, scope: !928)
!932 = !DILocation(line: 114, column: 16, scope: !928)
!933 = !DILocation(line: 114, column: 9, scope: !928)
!934 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIiSaIiEED2Ev", scope: !33, file: !30, line: 159, type: !173, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !186, variables: !7)
!935 = !DILocalVariable(name: "this", arg: 1, scope: !934, type: !874, flags: DIFlagArtificial | DIFlagObjectPointer)
!936 = !DILocation(line: 0, scope: !934)
!937 = !DILocation(line: 160, column: 29, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !30, line: 160, column: 7)
!939 = !DILocation(line: 160, column: 37, scope: !938)
!940 = !DILocation(line: 160, column: 53, scope: !938)
!941 = !DILocation(line: 160, column: 61, scope: !938)
!942 = !DILocation(line: 161, column: 17, scope: !938)
!943 = !DILocation(line: 161, column: 25, scope: !938)
!944 = !DILocation(line: 161, column: 9, scope: !938)
!945 = !DILocation(line: 160, column: 9, scope: !938)
!946 = !DILocation(line: 161, column: 36, scope: !938)
!947 = !DILocation(line: 161, column: 36, scope: !934)
!948 = distinct !DISubprogram(name: "_Destroy<int *>", linkageName: "_ZSt8_DestroyIPiEvT_S1_", scope: !6, file: !913, line: 122, type: !949, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !951, variables: !7)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !72, !72}
!951 = !{!917}
!952 = !DILocalVariable(name: "__first", arg: 1, scope: !948, file: !913, line: 122, type: !72)
!953 = !DILocation(line: 122, column: 31, scope: !948)
!954 = !DILocalVariable(name: "__last", arg: 2, scope: !948, file: !913, line: 122, type: !72)
!955 = !DILocation(line: 122, column: 57, scope: !948)
!956 = !DILocation(line: 127, column: 12, scope: !948)
!957 = !DILocation(line: 127, column: 21, scope: !948)
!958 = !DILocation(line: 126, column: 7, scope: !948)
!959 = !DILocation(line: 128, column: 5, scope: !948)
!960 = distinct !DISubprogram(name: "__destroy<int *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_", scope: !961, file: !913, line: 112, type: !949, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !951, declaration: !964, variables: !7)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !6, file: !913, line: 108, size: 8, elements: !7, templateParams: !962, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!962 = !{!963}
!963 = !DITemplateValueParameter(type: !318, value: i8 1)
!964 = !DISubprogram(name: "__destroy<int *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_", scope: !961, file: !913, line: 112, type: !949, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, templateParams: !951)
!965 = !DILocalVariable(arg: 1, scope: !960, file: !913, line: 112, type: !72)
!966 = !DILocation(line: 112, column: 35, scope: !960)
!967 = !DILocalVariable(arg: 2, scope: !960, file: !913, line: 112, type: !72)
!968 = !DILocation(line: 112, column: 53, scope: !960)
!969 = !DILocation(line: 112, column: 57, scope: !960)
!970 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim", scope: !33, file: !30, line: 174, type: !191, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !190, variables: !7)
!971 = !DILocalVariable(name: "this", arg: 1, scope: !970, type: !874, flags: DIFlagArtificial | DIFlagObjectPointer)
!972 = !DILocation(line: 0, scope: !970)
!973 = !DILocalVariable(name: "__p", arg: 2, scope: !970, file: !30, line: 174, type: !142)
!974 = !DILocation(line: 174, column: 29, scope: !970)
!975 = !DILocalVariable(name: "__n", arg: 3, scope: !970, file: !30, line: 174, type: !88)
!976 = !DILocation(line: 174, column: 41, scope: !970)
!977 = !DILocation(line: 177, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !30, line: 177, column: 6)
!979 = !DILocation(line: 177, column: 6, scope: !970)
!980 = !DILocation(line: 178, column: 20, scope: !978)
!981 = !DILocation(line: 178, column: 29, scope: !978)
!982 = !DILocation(line: 178, column: 34, scope: !978)
!983 = !DILocation(line: 178, column: 4, scope: !978)
!984 = !DILocation(line: 179, column: 7, scope: !970)
!985 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev", scope: !36, file: !30, line: 79, type: !146, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !986, variables: !7)
!986 = !DISubprogram(name: "~_Vector_impl", scope: !36, type: !146, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!987 = !DILocalVariable(name: "this", arg: 1, scope: !985, type: !880, flags: DIFlagArtificial | DIFlagObjectPointer)
!988 = !DILocation(line: 0, scope: !985)
!989 = !DILocation(line: 79, column: 14, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !30, line: 79, column: 14)
!991 = !DILocation(line: 79, column: 14, scope: !985)
!992 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim", scope: !43, file: !41, line: 184, type: !121, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !120, variables: !7)
!993 = !DILocalVariable(name: "__a", arg: 1, scope: !992, file: !41, line: 184, type: !117)
!994 = !DILocation(line: 184, column: 36, scope: !992)
!995 = !DILocalVariable(name: "__p", arg: 2, scope: !992, file: !41, line: 184, type: !49)
!996 = !DILocation(line: 184, column: 49, scope: !992)
!997 = !DILocalVariable(name: "__n", arg: 3, scope: !992, file: !41, line: 184, type: !118)
!998 = !DILocation(line: 184, column: 64, scope: !992)
!999 = !DILocation(line: 185, column: 7, scope: !992)
!1000 = !DILocation(line: 185, column: 22, scope: !992)
!1001 = !DILocation(line: 185, column: 27, scope: !992)
!1002 = !DILocation(line: 185, column: 11, scope: !992)
!1003 = !DILocation(line: 185, column: 33, scope: !992)
!1004 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim", scope: !55, file: !56, line: 109, type: !94, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !93, variables: !7)
!1005 = !DILocalVariable(name: "this", arg: 1, scope: !1004, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!1006 = !DILocation(line: 0, scope: !1004)
!1007 = !DILocalVariable(name: "__p", arg: 2, scope: !1004, file: !56, line: 109, type: !71)
!1008 = !DILocation(line: 109, column: 26, scope: !1004)
!1009 = !DILocalVariable(arg: 3, scope: !1004, file: !56, line: 109, type: !87)
!1010 = !DILocation(line: 109, column: 40, scope: !1004)
!1011 = !DILocation(line: 110, column: 27, scope: !1004)
!1012 = !DILocation(line: 110, column: 9, scope: !1004)
!1013 = !DILocation(line: 110, column: 33, scope: !1004)
!1014 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIiED2Ev", scope: !52, file: !51, line: 121, type: !108, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !116, variables: !7)
!1015 = !DILocalVariable(name: "this", arg: 1, scope: !1014, type: !890, flags: DIFlagArtificial | DIFlagObjectPointer)
!1016 = !DILocation(line: 0, scope: !1014)
!1017 = !DILocation(line: 121, column: 30, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !51, line: 121, column: 28)
!1019 = !DILocation(line: 121, column: 30, scope: !1014)
!1020 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIiED2Ev", scope: !55, file: !56, line: 86, type: !59, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !67, variables: !7)
!1021 = !DILocalVariable(name: "this", arg: 1, scope: !1020, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !DILocation(line: 86, column: 48, scope: !1020)
!1024 = distinct !DISubprogram(name: "nimas", linkageName: "_ZN1A5nimasEv", scope: !415, file: !1, line: 55, type: !421, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !424, variables: !7)
!1025 = !DILocalVariable(name: "this", arg: 1, scope: !1024, type: !435, flags: DIFlagArtificial | DIFlagObjectPointer)
!1026 = !DILocation(line: 0, scope: !1024)
!1027 = !DILocation(line: 55, column: 31, scope: !1024)
!1028 = !DILocation(line: 55, column: 49, scope: !1024)
!1029 = distinct !DISubprogram(name: "construct<int>", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_", scope: !43, file: !41, line: 188, type: !1030, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !105, declaration: !1032, variables: !7)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !117, !49, !83}
!1032 = !DISubprogram(name: "construct<int>", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_", scope: !43, file: !41, line: 188, type: !1030, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, templateParams: !105)
!1033 = !DILocalVariable(name: "__a", arg: 1, scope: !1029, file: !41, line: 188, type: !117)
!1034 = !DILocation(line: 188, column: 37, scope: !1029)
!1035 = !DILocalVariable(name: "__p", arg: 2, scope: !1029, file: !41, line: 188, type: !49)
!1036 = !DILocation(line: 188, column: 50, scope: !1029)
!1037 = !DILocalVariable(name: "__arg", arg: 3, scope: !1029, file: !41, line: 188, type: !83)
!1038 = !DILocation(line: 188, column: 66, scope: !1029)
!1039 = !DILocation(line: 189, column: 9, scope: !1029)
!1040 = !DILocation(line: 189, column: 23, scope: !1029)
!1041 = !DILocation(line: 189, column: 28, scope: !1029)
!1042 = !DILocation(line: 189, column: 13, scope: !1029)
!1043 = !DILocation(line: 189, column: 36, scope: !1029)
!1044 = distinct !DISubprogram(name: "_M_insert_aux", linkageName: "_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi", scope: !29, file: !1045, line: 327, type: !381, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !380, variables: !7)
!1045 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/vector.tcc", directory: "/tests/g++")
!1046 = !DILocalVariable(name: "this", arg: 1, scope: !1044, type: !785, flags: DIFlagArtificial | DIFlagObjectPointer)
!1047 = !DILocation(line: 0, scope: !1044)
!1048 = !DILocalVariable(name: "__position", arg: 2, scope: !1044, file: !30, line: 1409, type: !228)
!1049 = !DILocation(line: 1409, column: 30, scope: !1044)
!1050 = !DILocalVariable(name: "__x", arg: 3, scope: !1044, file: !30, line: 1409, type: !209)
!1051 = !DILocation(line: 1409, column: 60, scope: !1044)
!1052 = !DILocation(line: 330, column: 17, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !1045, line: 330, column: 11)
!1054 = !DILocation(line: 330, column: 25, scope: !1053)
!1055 = !DILocation(line: 330, column: 44, scope: !1053)
!1056 = !DILocation(line: 330, column: 52, scope: !1053)
!1057 = !DILocation(line: 330, column: 35, scope: !1053)
!1058 = !DILocation(line: 330, column: 11, scope: !1044)
!1059 = !DILocation(line: 332, column: 35, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !1045, line: 331, column: 2)
!1061 = !DILocation(line: 332, column: 29, scope: !1060)
!1062 = !DILocation(line: 332, column: 50, scope: !1060)
!1063 = !DILocation(line: 332, column: 58, scope: !1060)
!1064 = !DILocation(line: 333, column: 15, scope: !1060)
!1065 = !DILocation(line: 332, column: 4, scope: !1060)
!1066 = !DILocation(line: 335, column: 12, scope: !1060)
!1067 = !DILocation(line: 335, column: 20, scope: !1060)
!1068 = !DILocation(line: 335, column: 4, scope: !1060)
!1069 = !DILocalVariable(name: "__x_copy", scope: !1060, file: !1045, line: 337, type: !10)
!1070 = !DILocation(line: 337, column: 8, scope: !1060)
!1071 = !DILocation(line: 337, column: 19, scope: !1060)
!1072 = !DILocation(line: 339, column: 4, scope: !1060)
!1073 = !DILocation(line: 343, column: 18, scope: !1060)
!1074 = !DILocation(line: 343, column: 4, scope: !1060)
!1075 = !DILocation(line: 343, column: 16, scope: !1060)
!1076 = !DILocation(line: 347, column: 2, scope: !1060)
!1077 = !DILocalVariable(name: "__len", scope: !1078, file: !1045, line: 350, type: !1079)
!1078 = distinct !DILexicalBlock(scope: !1053, file: !1045, line: 349, column: 2)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!1080 = !DILocation(line: 350, column: 20, scope: !1078)
!1081 = !DILocation(line: 351, column: 6, scope: !1078)
!1082 = !DILocalVariable(name: "__elems_before", scope: !1078, file: !1045, line: 352, type: !1079)
!1083 = !DILocation(line: 352, column: 20, scope: !1078)
!1084 = !DILocation(line: 352, column: 50, scope: !1078)
!1085 = !DILocation(line: 352, column: 48, scope: !1078)
!1086 = !DILocalVariable(name: "__new_start", scope: !1078, file: !1045, line: 353, type: !350)
!1087 = !DILocation(line: 353, column: 12, scope: !1078)
!1088 = !DILocation(line: 353, column: 30, scope: !1078)
!1089 = !DILocation(line: 353, column: 42, scope: !1078)
!1090 = !DILocalVariable(name: "__new_finish", scope: !1078, file: !1045, line: 354, type: !350)
!1091 = !DILocation(line: 354, column: 12, scope: !1078)
!1092 = !DILocation(line: 354, column: 25, scope: !1078)
!1093 = !DILocation(line: 361, column: 39, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1078, file: !1045, line: 356, column: 6)
!1095 = !DILocation(line: 361, column: 33, scope: !1094)
!1096 = !DILocation(line: 362, column: 26, scope: !1094)
!1097 = !DILocation(line: 362, column: 40, scope: !1094)
!1098 = !DILocation(line: 362, column: 38, scope: !1094)
!1099 = !DILocation(line: 366, column: 33, scope: !1094)
!1100 = !DILocation(line: 361, column: 8, scope: !1094)
!1101 = !DILocation(line: 368, column: 21, scope: !1094)
!1102 = !DILocation(line: 372, column: 10, scope: !1094)
!1103 = !DILocation(line: 372, column: 18, scope: !1094)
!1104 = !DILocation(line: 372, column: 39, scope: !1094)
!1105 = !DILocation(line: 373, column: 4, scope: !1094)
!1106 = !DILocation(line: 373, column: 17, scope: !1094)
!1107 = !DILocation(line: 371, column: 5, scope: !1094)
!1108 = !DILocation(line: 371, column: 3, scope: !1094)
!1109 = !DILocation(line: 375, column: 8, scope: !1094)
!1110 = !DILocation(line: 379, column: 15, scope: !1094)
!1111 = !DILocation(line: 379, column: 29, scope: !1094)
!1112 = !DILocation(line: 379, column: 37, scope: !1094)
!1113 = !DILocation(line: 380, column: 4, scope: !1094)
!1114 = !DILocation(line: 380, column: 18, scope: !1094)
!1115 = !DILocation(line: 378, column: 5, scope: !1094)
!1116 = !DILocation(line: 378, column: 3, scope: !1094)
!1117 = !DILocation(line: 381, column: 6, scope: !1094)
!1118 = !DILocation(line: 401, column: 5, scope: !1094)
!1119 = !DILocation(line: 384, column: 13, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !1045, line: 384, column: 12)
!1121 = distinct !DILexicalBlock(scope: !1078, file: !1045, line: 383, column: 6)
!1122 = !DILocation(line: 384, column: 12, scope: !1121)
!1123 = !DILocation(line: 385, column: 32, scope: !1120)
!1124 = !DILocation(line: 385, column: 26, scope: !1120)
!1125 = !DILocation(line: 386, column: 26, scope: !1120)
!1126 = !DILocation(line: 386, column: 40, scope: !1120)
!1127 = !DILocation(line: 386, column: 38, scope: !1120)
!1128 = !DILocation(line: 385, column: 3, scope: !1120)
!1129 = !DILocation(line: 401, column: 5, scope: !1120)
!1130 = !DILocation(line: 391, column: 6, scope: !1121)
!1131 = !DILocation(line: 388, column: 17, scope: !1120)
!1132 = !DILocation(line: 388, column: 30, scope: !1120)
!1133 = !DILocation(line: 388, column: 44, scope: !1120)
!1134 = !DILocation(line: 388, column: 3, scope: !1120)
!1135 = !DILocation(line: 389, column: 8, scope: !1121)
!1136 = !DILocation(line: 389, column: 22, scope: !1121)
!1137 = !DILocation(line: 389, column: 35, scope: !1121)
!1138 = !DILocation(line: 390, column: 8, scope: !1121)
!1139 = !DILocation(line: 392, column: 24, scope: !1078)
!1140 = !DILocation(line: 392, column: 32, scope: !1078)
!1141 = !DILocation(line: 392, column: 48, scope: !1078)
!1142 = !DILocation(line: 392, column: 56, scope: !1078)
!1143 = !DILocation(line: 393, column: 4, scope: !1078)
!1144 = !DILocation(line: 392, column: 4, scope: !1078)
!1145 = !DILocation(line: 394, column: 4, scope: !1078)
!1146 = !DILocation(line: 394, column: 24, scope: !1078)
!1147 = !DILocation(line: 394, column: 32, scope: !1078)
!1148 = !DILocation(line: 395, column: 10, scope: !1078)
!1149 = !DILocation(line: 395, column: 18, scope: !1078)
!1150 = !DILocation(line: 396, column: 12, scope: !1078)
!1151 = !DILocation(line: 396, column: 20, scope: !1078)
!1152 = !DILocation(line: 396, column: 4, scope: !1078)
!1153 = !DILocation(line: 397, column: 29, scope: !1078)
!1154 = !DILocation(line: 397, column: 10, scope: !1078)
!1155 = !DILocation(line: 397, column: 18, scope: !1078)
!1156 = !DILocation(line: 397, column: 27, scope: !1078)
!1157 = !DILocation(line: 398, column: 30, scope: !1078)
!1158 = !DILocation(line: 398, column: 10, scope: !1078)
!1159 = !DILocation(line: 398, column: 18, scope: !1078)
!1160 = !DILocation(line: 398, column: 28, scope: !1078)
!1161 = !DILocation(line: 399, column: 38, scope: !1078)
!1162 = !DILocation(line: 399, column: 52, scope: !1078)
!1163 = !DILocation(line: 399, column: 50, scope: !1078)
!1164 = !DILocation(line: 399, column: 10, scope: !1078)
!1165 = !DILocation(line: 399, column: 18, scope: !1078)
!1166 = !DILocation(line: 399, column: 36, scope: !1078)
!1167 = !DILocation(line: 401, column: 5, scope: !1044)
!1168 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIiSaIiEE3endEv", scope: !29, file: !30, line: 565, type: !226, isLocal: false, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !293, variables: !7)
!1169 = !DILocalVariable(name: "this", arg: 1, scope: !1168, type: !785, flags: DIFlagArtificial | DIFlagObjectPointer)
!1170 = !DILocation(line: 0, scope: !1168)
!1171 = !DILocation(line: 566, column: 31, scope: !1168)
!1172 = !DILocation(line: 566, column: 39, scope: !1168)
!1173 = !DILocation(line: 566, column: 16, scope: !1168)
!1174 = !DILocation(line: 566, column: 9, scope: !1168)
!1175 = distinct !DISubprogram(name: "construct", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi", scope: !55, file: !56, line: 129, type: !100, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !99, variables: !7)
!1176 = !DILocalVariable(name: "this", arg: 1, scope: !1175, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!1177 = !DILocation(line: 0, scope: !1175)
!1178 = !DILocalVariable(name: "__p", arg: 2, scope: !1175, file: !56, line: 129, type: !71)
!1179 = !DILocation(line: 129, column: 25, scope: !1175)
!1180 = !DILocalVariable(name: "__val", arg: 3, scope: !1175, file: !56, line: 129, type: !83)
!1181 = !DILocation(line: 129, column: 41, scope: !1175)
!1182 = !DILocation(line: 130, column: 23, scope: !1175)
!1183 = !DILocation(line: 130, column: 9, scope: !1175)
!1184 = !DILocation(line: 130, column: 32, scope: !1175)
!1185 = !DILocation(line: 130, column: 40, scope: !1175)
!1186 = distinct !DISubprogram(name: "copy_backward<int *, int *>", linkageName: "_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_", scope: !6, file: !1187, line: 638, type: !1188, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1190, variables: !7)
!1187 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_algobase.h", directory: "/tests/g++")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!72, !72, !72, !72}
!1190 = !{!1191, !1192}
!1191 = !DITemplateTypeParameter(name: "_BI1", type: !72)
!1192 = !DITemplateTypeParameter(name: "_BI2", type: !72)
!1193 = !DILocalVariable(name: "__first", arg: 1, scope: !1186, file: !1187, line: 638, type: !72)
!1194 = !DILocation(line: 638, column: 24, scope: !1186)
!1195 = !DILocalVariable(name: "__last", arg: 2, scope: !1186, file: !1187, line: 638, type: !72)
!1196 = !DILocation(line: 638, column: 38, scope: !1186)
!1197 = !DILocalVariable(name: "__result", arg: 3, scope: !1186, file: !1187, line: 638, type: !72)
!1198 = !DILocation(line: 638, column: 51, scope: !1186)
!1199 = !DILocation(line: 649, column: 27, scope: !1186)
!1200 = !DILocation(line: 649, column: 9, scope: !1186)
!1201 = !DILocation(line: 649, column: 55, scope: !1186)
!1202 = !DILocation(line: 649, column: 37, scope: !1186)
!1203 = !DILocation(line: 650, column: 9, scope: !1186)
!1204 = !DILocation(line: 648, column: 15, scope: !1186)
!1205 = !DILocation(line: 648, column: 7, scope: !1186)
!1206 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv", scope: !229, file: !230, line: 805, type: !283, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !282, variables: !7)
!1207 = !DILocalVariable(name: "this", arg: 1, scope: !1206, type: !1208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1209 = !DILocation(line: 0, scope: !1206)
!1210 = !DILocation(line: 806, column: 16, scope: !1206)
!1211 = !DILocation(line: 806, column: 9, scope: !1206)
!1212 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv", scope: !229, file: !230, line: 753, type: !243, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !242, variables: !7)
!1213 = !DILocalVariable(name: "this", arg: 1, scope: !1212, type: !1208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1214 = !DILocation(line: 0, scope: !1212)
!1215 = !DILocation(line: 754, column: 17, scope: !1212)
!1216 = !DILocation(line: 754, column: 9, scope: !1212)
!1217 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc", scope: !29, file: !30, line: 1422, type: !384, isLocal: false, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !383, variables: !7)
!1218 = !DILocalVariable(name: "this", arg: 1, scope: !1217, type: !1219, flags: DIFlagArtificial | DIFlagObjectPointer)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1220 = !DILocation(line: 0, scope: !1217)
!1221 = !DILocalVariable(name: "__n", arg: 2, scope: !1217, file: !30, line: 1422, type: !208)
!1222 = !DILocation(line: 1422, column: 30, scope: !1217)
!1223 = !DILocalVariable(name: "__s", arg: 3, scope: !1217, file: !30, line: 1422, type: !387)
!1224 = !DILocation(line: 1422, column: 47, scope: !1217)
!1225 = !DILocation(line: 1424, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !30, line: 1424, column: 6)
!1227 = !DILocation(line: 1424, column: 19, scope: !1226)
!1228 = !DILocation(line: 1424, column: 17, scope: !1226)
!1229 = !DILocation(line: 1424, column: 28, scope: !1226)
!1230 = !DILocation(line: 1424, column: 26, scope: !1226)
!1231 = !DILocation(line: 1424, column: 6, scope: !1217)
!1232 = !DILocation(line: 1425, column: 25, scope: !1226)
!1233 = !DILocation(line: 1425, column: 4, scope: !1226)
!1234 = !DILocalVariable(name: "__len", scope: !1217, file: !30, line: 1427, type: !1079)
!1235 = !DILocation(line: 1427, column: 18, scope: !1217)
!1236 = !DILocation(line: 1427, column: 26, scope: !1217)
!1237 = !DILocation(line: 1427, column: 44, scope: !1217)
!1238 = !DILocation(line: 1427, column: 35, scope: !1217)
!1239 = !DILocation(line: 1427, column: 33, scope: !1217)
!1240 = !DILocation(line: 1428, column: 10, scope: !1217)
!1241 = !DILocation(line: 1428, column: 18, scope: !1217)
!1242 = !DILocation(line: 1428, column: 16, scope: !1217)
!1243 = !DILocation(line: 1428, column: 25, scope: !1217)
!1244 = !DILocation(line: 1428, column: 28, scope: !1217)
!1245 = !DILocation(line: 1428, column: 36, scope: !1217)
!1246 = !DILocation(line: 1428, column: 34, scope: !1217)
!1247 = !DILocation(line: 1428, column: 9, scope: !1217)
!1248 = !DILocation(line: 1428, column: 50, scope: !1217)
!1249 = !DILocation(line: 1428, column: 63, scope: !1217)
!1250 = !DILocation(line: 1428, column: 2, scope: !1217)
!1251 = distinct !DISubprogram(name: "operator-<int *, std::vector<int, std::allocator<int> > >", linkageName: "_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_", scope: !44, file: !230, line: 923, type: !1252, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !285, variables: !7)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!270, !1254, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !252, size: 64)
!1255 = !DILocalVariable(name: "__lhs", arg: 1, scope: !1251, file: !230, line: 923, type: !1254)
!1256 = !DILocation(line: 923, column: 63, scope: !1251)
!1257 = !DILocalVariable(name: "__rhs", arg: 2, scope: !1251, file: !230, line: 924, type: !1254)
!1258 = !DILocation(line: 924, column: 56, scope: !1251)
!1259 = !DILocation(line: 926, column: 14, scope: !1251)
!1260 = !DILocation(line: 926, column: 20, scope: !1251)
!1261 = !DILocation(line: 926, column: 29, scope: !1251)
!1262 = !DILocation(line: 926, column: 35, scope: !1251)
!1263 = !DILocation(line: 926, column: 27, scope: !1251)
!1264 = !DILocation(line: 926, column: 7, scope: !1251)
!1265 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIiSaIiEE5beginEv", scope: !29, file: !30, line: 547, type: !226, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !225, variables: !7)
!1266 = !DILocalVariable(name: "this", arg: 1, scope: !1265, type: !785, flags: DIFlagArtificial | DIFlagObjectPointer)
!1267 = !DILocation(line: 0, scope: !1265)
!1268 = !DILocation(line: 548, column: 31, scope: !1265)
!1269 = !DILocation(line: 548, column: 39, scope: !1265)
!1270 = !DILocation(line: 548, column: 16, scope: !1265)
!1271 = !DILocation(line: 548, column: 9, scope: !1265)
!1272 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm", scope: !33, file: !30, line: 167, type: !188, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !187, variables: !7)
!1273 = !DILocalVariable(name: "this", arg: 1, scope: !1272, type: !874, flags: DIFlagArtificial | DIFlagObjectPointer)
!1274 = !DILocation(line: 0, scope: !1272)
!1275 = !DILocalVariable(name: "__n", arg: 2, scope: !1272, file: !30, line: 167, type: !88)
!1276 = !DILocation(line: 167, column: 26, scope: !1272)
!1277 = !DILocation(line: 170, column: 9, scope: !1272)
!1278 = !DILocation(line: 170, column: 13, scope: !1272)
!1279 = !DILocation(line: 170, column: 34, scope: !1272)
!1280 = !DILocation(line: 170, column: 43, scope: !1272)
!1281 = !DILocation(line: 170, column: 20, scope: !1272)
!1282 = !DILocation(line: 170, column: 2, scope: !1272)
!1283 = distinct !DISubprogram(name: "__uninitialized_move_if_noexcept_a<int *, int *, std::allocator<int> >", linkageName: "_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_", scope: !6, file: !1284, line: 297, type: !1285, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1287, variables: !7)
!1284 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_uninitialized.h", directory: "/tests/g++")
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!72, !72, !72, !72, !117}
!1287 = !{!1288, !917, !1289}
!1288 = !DITemplateTypeParameter(name: "_InputIterator", type: !72)
!1289 = !DITemplateTypeParameter(name: "_Allocator", type: !52)
!1290 = !DILocalVariable(name: "__first", arg: 1, scope: !1283, file: !1284, line: 297, type: !72)
!1291 = !DILocation(line: 297, column: 55, scope: !1283)
!1292 = !DILocalVariable(name: "__last", arg: 2, scope: !1283, file: !1284, line: 298, type: !72)
!1293 = !DILocation(line: 298, column: 27, scope: !1283)
!1294 = !DILocalVariable(name: "__result", arg: 3, scope: !1283, file: !1284, line: 299, type: !72)
!1295 = !DILocation(line: 299, column: 29, scope: !1283)
!1296 = !DILocalVariable(name: "__alloc", arg: 4, scope: !1283, file: !1284, line: 300, type: !117)
!1297 = !DILocation(line: 300, column: 24, scope: !1283)
!1298 = !DILocation(line: 303, column: 3, scope: !1283)
!1299 = !DILocation(line: 304, column: 3, scope: !1283)
!1300 = !DILocation(line: 304, column: 52, scope: !1283)
!1301 = !DILocation(line: 304, column: 62, scope: !1283)
!1302 = !DILocation(line: 302, column: 14, scope: !1283)
!1303 = !DILocation(line: 302, column: 7, scope: !1283)
!1304 = distinct !DISubprogram(name: "destroy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi", scope: !43, file: !41, line: 191, type: !124, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !123, variables: !7)
!1305 = !DILocalVariable(name: "__a", arg: 1, scope: !1304, file: !41, line: 191, type: !117)
!1306 = !DILocation(line: 191, column: 33, scope: !1304)
!1307 = !DILocalVariable(name: "__p", arg: 2, scope: !1304, file: !41, line: 191, type: !49)
!1308 = !DILocation(line: 191, column: 46, scope: !1304)
!1309 = !DILocation(line: 192, column: 7, scope: !1304)
!1310 = !DILocation(line: 192, column: 19, scope: !1304)
!1311 = !DILocation(line: 192, column: 11, scope: !1304)
!1312 = !DILocation(line: 192, column: 25, scope: !1304)
!1313 = distinct !DISubprogram(name: "__copy_move_backward_a2<false, int *, int *>", linkageName: "_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_", scope: !6, file: !1187, line: 611, type: !1188, isLocal: false, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1314, variables: !7)
!1314 = !{!1315, !1191, !1192}
!1315 = !DITemplateValueParameter(name: "_IsMove", type: !318, value: i8 0)
!1316 = !DILocalVariable(name: "__first", arg: 1, scope: !1313, file: !1187, line: 611, type: !72)
!1317 = !DILocation(line: 611, column: 34, scope: !1313)
!1318 = !DILocalVariable(name: "__last", arg: 2, scope: !1313, file: !1187, line: 611, type: !72)
!1319 = !DILocation(line: 611, column: 48, scope: !1313)
!1320 = !DILocalVariable(name: "__result", arg: 3, scope: !1313, file: !1187, line: 611, type: !72)
!1321 = !DILocation(line: 611, column: 61, scope: !1313)
!1322 = !DILocation(line: 614, column: 24, scope: !1313)
!1323 = !DILocation(line: 614, column: 6, scope: !1313)
!1324 = !DILocation(line: 614, column: 52, scope: !1313)
!1325 = !DILocation(line: 614, column: 34, scope: !1313)
!1326 = !DILocation(line: 615, column: 24, scope: !1313)
!1327 = !DILocation(line: 615, column: 6, scope: !1313)
!1328 = !DILocation(line: 613, column: 19, scope: !1313)
!1329 = !DILocation(line: 613, column: 7, scope: !1313)
!1330 = distinct !DISubprogram(name: "__miter_base<int *>", linkageName: "_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_", scope: !6, file: !1187, line: 293, type: !1331, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !249, variables: !7)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1333, !72}
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !1334, file: !247, line: 214, baseType: !72)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Iter_base<int *, false>", scope: !6, file: !247, line: 212, size: 8, elements: !1335, templateParams: !1337, identifier: "_ZTSSt10_Iter_baseIPiLb0EE")
!1335 = !{!1336}
!1336 = !DISubprogram(name: "_S_base", linkageName: "_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_", scope: !1334, file: !247, line: 215, type: !1331, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!1337 = !{!250, !1338}
!1338 = !DITemplateValueParameter(name: "_HasBase", type: !318, value: i8 0)
!1339 = !DILocalVariable(name: "__it", arg: 1, scope: !1330, file: !1187, line: 293, type: !72)
!1340 = !DILocation(line: 293, column: 28, scope: !1330)
!1341 = !DILocation(line: 294, column: 51, scope: !1330)
!1342 = !DILocation(line: 294, column: 14, scope: !1330)
!1343 = !DILocation(line: 294, column: 7, scope: !1330)
!1344 = distinct !DISubprogram(name: "__copy_move_backward_a<false, int *, int *>", linkageName: "_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_", scope: !6, file: !1187, line: 593, type: !1188, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1314, variables: !7)
!1345 = !DILocalVariable(name: "__first", arg: 1, scope: !1344, file: !1187, line: 593, type: !72)
!1346 = !DILocation(line: 593, column: 33, scope: !1344)
!1347 = !DILocalVariable(name: "__last", arg: 2, scope: !1344, file: !1187, line: 593, type: !72)
!1348 = !DILocation(line: 593, column: 47, scope: !1344)
!1349 = !DILocalVariable(name: "__result", arg: 3, scope: !1344, file: !1187, line: 593, type: !72)
!1350 = !DILocation(line: 593, column: 60, scope: !1344)
!1351 = !DILocalVariable(name: "__simple", scope: !1344, file: !1187, line: 598, type: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!1353 = !DILocation(line: 598, column: 18, scope: !1344)
!1354 = !DILocation(line: 604, column: 59, scope: !1344)
!1355 = !DILocation(line: 605, column: 10, scope: !1344)
!1356 = !DILocation(line: 606, column: 10, scope: !1344)
!1357 = !DILocation(line: 603, column: 14, scope: !1344)
!1358 = !DILocation(line: 603, column: 7, scope: !1344)
!1359 = distinct !DISubprogram(name: "__niter_base<int *>", linkageName: "_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_", scope: !6, file: !1187, line: 282, type: !1331, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !249, variables: !7)
!1360 = !DILocalVariable(name: "__it", arg: 1, scope: !1359, file: !1187, line: 282, type: !72)
!1361 = !DILocation(line: 282, column: 28, scope: !1359)
!1362 = !DILocation(line: 283, column: 51, scope: !1359)
!1363 = !DILocation(line: 283, column: 14, scope: !1359)
!1364 = !DILocation(line: 283, column: 7, scope: !1359)
!1365 = distinct !DISubprogram(name: "__copy_move_b<int>", linkageName: "_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_", scope: !1366, file: !1187, line: 575, type: !1380, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !105, declaration: !1382, variables: !7)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move_backward<false, true, std::random_access_iterator_tag>", scope: !6, file: !1187, line: 571, size: 8, elements: !7, templateParams: !1367, identifier: "_ZTSSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE")
!1367 = !{!1368, !963, !1369}
!1368 = !DITemplateValueParameter(type: !318, value: i8 0)
!1369 = !DITemplateTypeParameter(type: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !6, file: !247, line: 103, size: 8, elements: !1371, identifier: "_ZTSSt26random_access_iterator_tag")
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1370, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !6, file: !247, line: 99, size: 8, elements: !1374, identifier: "_ZTSSt26bidirectional_iterator_tag")
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1373, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !6, file: !247, line: 95, size: 8, elements: !1377, identifier: "_ZTSSt20forward_iterator_tag")
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1376, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !6, file: !247, line: 89, size: 8, elements: !7, identifier: "_ZTSSt18input_iterator_tag")
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!72, !80, !80, !72}
!1382 = !DISubprogram(name: "__copy_move_b<int>", linkageName: "_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_", scope: !1366, file: !1187, line: 575, type: !1380, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, templateParams: !105)
!1383 = !DILocalVariable(name: "__first", arg: 1, scope: !1365, file: !1187, line: 575, type: !80)
!1384 = !DILocation(line: 575, column: 34, scope: !1365)
!1385 = !DILocalVariable(name: "__last", arg: 2, scope: !1365, file: !1187, line: 575, type: !80)
!1386 = !DILocation(line: 575, column: 54, scope: !1365)
!1387 = !DILocalVariable(name: "__result", arg: 3, scope: !1365, file: !1187, line: 575, type: !72)
!1388 = !DILocation(line: 575, column: 67, scope: !1365)
!1389 = !DILocalVariable(name: "_Num", scope: !1365, file: !1187, line: 584, type: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1391 = !DILocation(line: 584, column: 20, scope: !1365)
!1392 = !DILocation(line: 584, column: 27, scope: !1365)
!1393 = !DILocation(line: 584, column: 36, scope: !1365)
!1394 = !DILocation(line: 584, column: 34, scope: !1365)
!1395 = !DILocation(line: 585, column: 8, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1365, file: !1187, line: 585, column: 8)
!1397 = !DILocation(line: 585, column: 8, scope: !1365)
!1398 = !DILocation(line: 586, column: 24, scope: !1396)
!1399 = !DILocation(line: 586, column: 35, scope: !1396)
!1400 = !DILocation(line: 586, column: 33, scope: !1396)
!1401 = !DILocation(line: 586, column: 6, scope: !1396)
!1402 = !DILocation(line: 586, column: 41, scope: !1396)
!1403 = !DILocation(line: 586, column: 64, scope: !1396)
!1404 = !DILocation(line: 586, column: 62, scope: !1396)
!1405 = !DILocation(line: 587, column: 11, scope: !1365)
!1406 = !DILocation(line: 587, column: 22, scope: !1365)
!1407 = !DILocation(line: 587, column: 20, scope: !1365)
!1408 = !DILocation(line: 587, column: 4, scope: !1365)
!1409 = distinct !DISubprogram(name: "_S_base", linkageName: "_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_", scope: !1334, file: !247, line: 215, type: !1331, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1336, variables: !7)
!1410 = !DILocalVariable(name: "__it", arg: 1, scope: !1409, file: !247, line: 215, type: !72)
!1411 = !DILocation(line: 215, column: 46, scope: !1409)
!1412 = !DILocation(line: 216, column: 16, scope: !1409)
!1413 = !DILocation(line: 216, column: 9, scope: !1409)
!1414 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIiSaIiEE8max_sizeEv", scope: !29, file: !30, line: 659, type: !308, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !310, variables: !7)
!1415 = !DILocalVariable(name: "this", arg: 1, scope: !1414, type: !1219, flags: DIFlagArtificial | DIFlagObjectPointer)
!1416 = !DILocation(line: 0, scope: !1414)
!1417 = !DILocation(line: 660, column: 40, scope: !1414)
!1418 = !DILocation(line: 660, column: 16, scope: !1414)
!1419 = !DILocation(line: 660, column: 9, scope: !1414)
!1420 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIiSaIiEE4sizeEv", scope: !29, file: !30, line: 654, type: !308, isLocal: false, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !307, variables: !7)
!1421 = !DILocalVariable(name: "this", arg: 1, scope: !1420, type: !1219, flags: DIFlagArtificial | DIFlagObjectPointer)
!1422 = !DILocation(line: 0, scope: !1420)
!1423 = !DILocation(line: 655, column: 32, scope: !1420)
!1424 = !DILocation(line: 655, column: 40, scope: !1420)
!1425 = !DILocation(line: 655, column: 58, scope: !1420)
!1426 = !DILocation(line: 655, column: 66, scope: !1420)
!1427 = !DILocation(line: 655, column: 50, scope: !1420)
!1428 = !DILocation(line: 655, column: 9, scope: !1420)
!1429 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !6, file: !1187, line: 219, type: !1430, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1434, variables: !7)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1432, !1432, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1434 = !{!1435}
!1435 = !DITemplateTypeParameter(name: "_Tp", type: !90)
!1436 = !DILocalVariable(name: "__a", arg: 1, scope: !1429, file: !1187, line: 219, type: !1432)
!1437 = !DILocation(line: 219, column: 20, scope: !1429)
!1438 = !DILocalVariable(name: "__b", arg: 2, scope: !1429, file: !1187, line: 219, type: !1432)
!1439 = !DILocation(line: 219, column: 36, scope: !1429)
!1440 = !DILocation(line: 224, column: 11, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1429, file: !1187, line: 224, column: 11)
!1442 = !DILocation(line: 224, column: 17, scope: !1441)
!1443 = !DILocation(line: 224, column: 15, scope: !1441)
!1444 = !DILocation(line: 224, column: 11, scope: !1429)
!1445 = !DILocation(line: 225, column: 9, scope: !1441)
!1446 = !DILocation(line: 225, column: 2, scope: !1441)
!1447 = !DILocation(line: 226, column: 14, scope: !1429)
!1448 = !DILocation(line: 226, column: 7, scope: !1429)
!1449 = !DILocation(line: 227, column: 5, scope: !1429)
!1450 = distinct !DISubprogram(name: "max_size", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_", scope: !43, file: !41, line: 194, type: !127, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !126, variables: !7)
!1451 = !DILocalVariable(name: "__a", arg: 1, scope: !1450, file: !41, line: 194, type: !114)
!1452 = !DILocation(line: 194, column: 45, scope: !1450)
!1453 = !DILocation(line: 195, column: 14, scope: !1450)
!1454 = !DILocation(line: 195, column: 18, scope: !1450)
!1455 = !DILocation(line: 195, column: 7, scope: !1450)
!1456 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: !33, file: !30, line: 117, type: !164, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !163, variables: !7)
!1457 = !DILocalVariable(name: "this", arg: 1, scope: !1456, type: !1458, flags: DIFlagArtificial | DIFlagObjectPointer)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1459 = !DILocation(line: 0, scope: !1456)
!1460 = !DILocation(line: 118, column: 59, scope: !1456)
!1461 = !DILocation(line: 118, column: 16, scope: !1456)
!1462 = !DILocation(line: 118, column: 9, scope: !1456)
!1463 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv", scope: !55, file: !56, line: 113, type: !97, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !96, variables: !7)
!1464 = !DILocalVariable(name: "this", arg: 1, scope: !1463, type: !1465, flags: DIFlagArtificial | DIFlagObjectPointer)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1466 = !DILocation(line: 0, scope: !1463)
!1467 = !DILocation(line: 114, column: 9, scope: !1463)
!1468 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_", scope: !229, file: !230, line: 740, type: !238, isLocal: false, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !237, variables: !7)
!1469 = !DILocalVariable(name: "this", arg: 1, scope: !1468, type: !1470, flags: DIFlagArtificial | DIFlagObjectPointer)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1471 = !DILocation(line: 0, scope: !1468)
!1472 = !DILocalVariable(name: "__i", arg: 2, scope: !1468, file: !230, line: 740, type: !240)
!1473 = !DILocation(line: 740, column: 42, scope: !1468)
!1474 = !DILocation(line: 741, column: 9, scope: !1468)
!1475 = !DILocation(line: 741, column: 20, scope: !1468)
!1476 = !DILocation(line: 741, column: 27, scope: !1468)
!1477 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m", scope: !43, file: !41, line: 181, type: !47, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !46, variables: !7)
!1478 = !DILocalVariable(name: "__a", arg: 1, scope: !1477, file: !41, line: 181, type: !117)
!1479 = !DILocation(line: 181, column: 22, scope: !1477)
!1480 = !DILocalVariable(name: "__n", arg: 2, scope: !1477, file: !41, line: 181, type: !118)
!1481 = !DILocation(line: 181, column: 37, scope: !1477)
!1482 = !DILocation(line: 182, column: 14, scope: !1477)
!1483 = !DILocation(line: 182, column: 27, scope: !1477)
!1484 = !DILocation(line: 182, column: 18, scope: !1477)
!1485 = !DILocation(line: 182, column: 7, scope: !1477)
!1486 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv", scope: !55, file: !56, line: 99, type: !85, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !84, variables: !7)
!1487 = !DILocalVariable(name: "this", arg: 1, scope: !1486, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!1488 = !DILocation(line: 0, scope: !1486)
!1489 = !DILocalVariable(name: "__n", arg: 2, scope: !1486, file: !56, line: 99, type: !87)
!1490 = !DILocation(line: 99, column: 26, scope: !1486)
!1491 = !DILocalVariable(arg: 3, scope: !1486, file: !56, line: 99, type: !91)
!1492 = !DILocation(line: 99, column: 43, scope: !1486)
!1493 = !DILocation(line: 101, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !56, line: 101, column: 6)
!1495 = !DILocation(line: 101, column: 18, scope: !1494)
!1496 = !DILocation(line: 101, column: 10, scope: !1494)
!1497 = !DILocation(line: 101, column: 6, scope: !1486)
!1498 = !DILocation(line: 102, column: 4, scope: !1494)
!1499 = !DILocation(line: 104, column: 42, scope: !1486)
!1500 = !DILocation(line: 104, column: 46, scope: !1486)
!1501 = !DILocation(line: 104, column: 27, scope: !1486)
!1502 = !DILocation(line: 104, column: 9, scope: !1486)
!1503 = !DILocation(line: 104, column: 2, scope: !1486)
!1504 = distinct !DISubprogram(name: "__uninitialized_copy_a<int *, int *, int>", linkageName: "_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E", scope: !6, file: !1284, line: 279, type: !1285, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1505, variables: !7)
!1505 = !{!1288, !917, !106}
!1506 = !DILocalVariable(name: "__first", arg: 1, scope: !1504, file: !1284, line: 279, type: !72)
!1507 = !DILocation(line: 279, column: 43, scope: !1504)
!1508 = !DILocalVariable(name: "__last", arg: 2, scope: !1504, file: !1284, line: 279, type: !72)
!1509 = !DILocation(line: 279, column: 67, scope: !1504)
!1510 = !DILocalVariable(name: "__result", arg: 3, scope: !1504, file: !1284, line: 280, type: !72)
!1511 = !DILocation(line: 280, column: 24, scope: !1504)
!1512 = !DILocalVariable(arg: 4, scope: !1504, file: !1284, line: 280, type: !117)
!1513 = !DILocation(line: 280, column: 49, scope: !1504)
!1514 = !DILocation(line: 281, column: 38, scope: !1504)
!1515 = !DILocation(line: 281, column: 47, scope: !1504)
!1516 = !DILocation(line: 281, column: 55, scope: !1504)
!1517 = !DILocation(line: 281, column: 14, scope: !1504)
!1518 = !DILocation(line: 281, column: 7, scope: !1504)
!1519 = distinct !DISubprogram(name: "uninitialized_copy<int *, int *>", linkageName: "_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_", scope: !6, file: !1284, line: 107, type: !1188, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1520, variables: !7)
!1520 = !{!1288, !917}
!1521 = !DILocalVariable(name: "__first", arg: 1, scope: !1519, file: !1284, line: 107, type: !72)
!1522 = !DILocation(line: 107, column: 39, scope: !1519)
!1523 = !DILocalVariable(name: "__last", arg: 2, scope: !1519, file: !1284, line: 107, type: !72)
!1524 = !DILocation(line: 107, column: 63, scope: !1519)
!1525 = !DILocalVariable(name: "__result", arg: 3, scope: !1519, file: !1284, line: 108, type: !72)
!1526 = !DILocation(line: 108, column: 27, scope: !1519)
!1527 = !DILocalVariable(name: "__assignable", scope: !1519, file: !1284, line: 115, type: !1352)
!1528 = !DILocation(line: 115, column: 18, scope: !1519)
!1529 = !DILocation(line: 126, column: 16, scope: !1519)
!1530 = !DILocation(line: 126, column: 25, scope: !1519)
!1531 = !DILocation(line: 126, column: 33, scope: !1519)
!1532 = !DILocation(line: 123, column: 14, scope: !1519)
!1533 = !DILocation(line: 123, column: 7, scope: !1519)
!1534 = distinct !DISubprogram(name: "__uninit_copy<int *, int *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_", scope: !1535, file: !1284, line: 91, type: !1188, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1520, declaration: !1538, variables: !7)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_copy<true>", scope: !6, file: !1284, line: 87, size: 8, elements: !7, templateParams: !1536, identifier: "_ZTSSt20__uninitialized_copyILb1EE")
!1536 = !{!1537}
!1537 = !DITemplateValueParameter(name: "_TrivialValueTypes", type: !318, value: i8 1)
!1538 = !DISubprogram(name: "__uninit_copy<int *, int *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_", scope: !1535, file: !1284, line: 91, type: !1188, isLocal: false, isDefinition: false, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, templateParams: !1520)
!1539 = !DILocalVariable(name: "__first", arg: 1, scope: !1534, file: !1284, line: 91, type: !72)
!1540 = !DILocation(line: 91, column: 38, scope: !1534)
!1541 = !DILocalVariable(name: "__last", arg: 2, scope: !1534, file: !1284, line: 91, type: !72)
!1542 = !DILocation(line: 91, column: 62, scope: !1534)
!1543 = !DILocalVariable(name: "__result", arg: 3, scope: !1534, file: !1284, line: 92, type: !72)
!1544 = !DILocation(line: 92, column: 26, scope: !1534)
!1545 = !DILocation(line: 93, column: 28, scope: !1534)
!1546 = !DILocation(line: 93, column: 37, scope: !1534)
!1547 = !DILocation(line: 93, column: 45, scope: !1534)
!1548 = !DILocation(line: 93, column: 18, scope: !1534)
!1549 = !DILocation(line: 93, column: 11, scope: !1534)
!1550 = distinct !DISubprogram(name: "copy<int *, int *>", linkageName: "_ZSt4copyIPiS0_ET0_T_S2_S1_", scope: !6, file: !1187, line: 462, type: !1188, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1551, variables: !7)
!1551 = !{!1552, !1553}
!1552 = !DITemplateTypeParameter(name: "_II", type: !72)
!1553 = !DITemplateTypeParameter(name: "_OI", type: !72)
!1554 = !DILocalVariable(name: "__first", arg: 1, scope: !1550, file: !1187, line: 462, type: !72)
!1555 = !DILocation(line: 462, column: 14, scope: !1550)
!1556 = !DILocalVariable(name: "__last", arg: 2, scope: !1550, file: !1187, line: 462, type: !72)
!1557 = !DILocation(line: 462, column: 27, scope: !1550)
!1558 = !DILocalVariable(name: "__result", arg: 3, scope: !1550, file: !1187, line: 462, type: !72)
!1559 = !DILocation(line: 462, column: 39, scope: !1550)
!1560 = !DILocation(line: 471, column: 27, scope: !1550)
!1561 = !DILocation(line: 471, column: 9, scope: !1550)
!1562 = !DILocation(line: 471, column: 55, scope: !1550)
!1563 = !DILocation(line: 471, column: 37, scope: !1550)
!1564 = !DILocation(line: 472, column: 9, scope: !1550)
!1565 = !DILocation(line: 470, column: 15, scope: !1550)
!1566 = !DILocation(line: 470, column: 7, scope: !1550)
!1567 = distinct !DISubprogram(name: "__copy_move_a2<false, int *, int *>", linkageName: "_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_", scope: !6, file: !1187, line: 436, type: !1188, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1568, variables: !7)
!1568 = !{!1315, !1552, !1553}
!1569 = !DILocalVariable(name: "__first", arg: 1, scope: !1567, file: !1187, line: 436, type: !72)
!1570 = !DILocation(line: 436, column: 24, scope: !1567)
!1571 = !DILocalVariable(name: "__last", arg: 2, scope: !1567, file: !1187, line: 436, type: !72)
!1572 = !DILocation(line: 436, column: 37, scope: !1567)
!1573 = !DILocalVariable(name: "__result", arg: 3, scope: !1567, file: !1187, line: 436, type: !72)
!1574 = !DILocation(line: 436, column: 49, scope: !1567)
!1575 = !DILocation(line: 438, column: 64, scope: !1567)
!1576 = !DILocation(line: 438, column: 46, scope: !1567)
!1577 = !DILocation(line: 439, column: 29, scope: !1567)
!1578 = !DILocation(line: 439, column: 11, scope: !1567)
!1579 = !DILocation(line: 440, column: 29, scope: !1567)
!1580 = !DILocation(line: 440, column: 11, scope: !1567)
!1581 = !DILocation(line: 438, column: 18, scope: !1567)
!1582 = !DILocation(line: 438, column: 7, scope: !1567)
!1583 = distinct !DISubprogram(name: "__copy_move_a<false, int *, int *>", linkageName: "_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_", scope: !6, file: !1187, line: 391, type: !1188, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !1568, variables: !7)
!1584 = !DILocalVariable(name: "__first", arg: 1, scope: !1583, file: !1187, line: 391, type: !72)
!1585 = !DILocation(line: 391, column: 23, scope: !1583)
!1586 = !DILocalVariable(name: "__last", arg: 2, scope: !1583, file: !1187, line: 391, type: !72)
!1587 = !DILocation(line: 391, column: 36, scope: !1583)
!1588 = !DILocalVariable(name: "__result", arg: 3, scope: !1583, file: !1187, line: 391, type: !72)
!1589 = !DILocation(line: 391, column: 48, scope: !1583)
!1590 = !DILocalVariable(name: "__simple", scope: !1583, file: !1187, line: 396, type: !1352)
!1591 = !DILocation(line: 396, column: 18, scope: !1583)
!1592 = !DILocation(line: 402, column: 45, scope: !1583)
!1593 = !DILocation(line: 402, column: 54, scope: !1583)
!1594 = !DILocation(line: 402, column: 62, scope: !1583)
!1595 = !DILocation(line: 401, column: 14, scope: !1583)
!1596 = !DILocation(line: 401, column: 7, scope: !1583)
!1597 = distinct !DISubprogram(name: "__copy_m<int>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_", scope: !1598, file: !1187, line: 373, type: !1380, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !105, declaration: !1599, variables: !7)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<false, true, std::random_access_iterator_tag>", scope: !6, file: !1187, line: 369, size: 8, elements: !7, templateParams: !1367, identifier: "_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE")
!1599 = !DISubprogram(name: "__copy_m<int>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_", scope: !1598, file: !1187, line: 373, type: !1380, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false, templateParams: !105)
!1600 = !DILocalVariable(name: "__first", arg: 1, scope: !1597, file: !1187, line: 373, type: !80)
!1601 = !DILocation(line: 373, column: 29, scope: !1597)
!1602 = !DILocalVariable(name: "__last", arg: 2, scope: !1597, file: !1187, line: 373, type: !80)
!1603 = !DILocation(line: 373, column: 49, scope: !1597)
!1604 = !DILocalVariable(name: "__result", arg: 3, scope: !1597, file: !1187, line: 373, type: !72)
!1605 = !DILocation(line: 373, column: 62, scope: !1597)
!1606 = !DILocalVariable(name: "_Num", scope: !1597, file: !1187, line: 382, type: !1390)
!1607 = !DILocation(line: 382, column: 20, scope: !1597)
!1608 = !DILocation(line: 382, column: 27, scope: !1597)
!1609 = !DILocation(line: 382, column: 36, scope: !1597)
!1610 = !DILocation(line: 382, column: 34, scope: !1597)
!1611 = !DILocation(line: 383, column: 8, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1597, file: !1187, line: 383, column: 8)
!1613 = !DILocation(line: 383, column: 8, scope: !1597)
!1614 = !DILocation(line: 384, column: 24, scope: !1612)
!1615 = !DILocation(line: 384, column: 6, scope: !1612)
!1616 = !DILocation(line: 384, column: 34, scope: !1612)
!1617 = !DILocation(line: 384, column: 57, scope: !1612)
!1618 = !DILocation(line: 384, column: 55, scope: !1612)
!1619 = !DILocation(line: 385, column: 11, scope: !1597)
!1620 = !DILocation(line: 385, column: 22, scope: !1597)
!1621 = !DILocation(line: 385, column: 20, scope: !1597)
!1622 = !DILocation(line: 385, column: 4, scope: !1597)
!1623 = distinct !DISubprogram(name: "destroy", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi", scope: !55, file: !56, line: 133, type: !103, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !102, variables: !7)
!1624 = !DILocalVariable(name: "this", arg: 1, scope: !1623, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!1625 = !DILocation(line: 0, scope: !1623)
!1626 = !DILocalVariable(name: "__p", arg: 2, scope: !1623, file: !56, line: 133, type: !71)
!1627 = !DILocation(line: 133, column: 23, scope: !1623)
!1628 = !DILocation(line: 133, column: 43, scope: !1623)
