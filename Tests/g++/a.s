	.text
	.file	"a.cpp"
	.globl	_Z4testR1A              # -- Begin function _Z4testR1A
	.p2align	4, 0x90
	.type	_Z4testR1A,@function
_Z4testR1A:                             # @_Z4testR1A
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN1A4testEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z4testR1A, .Lfunc_end0-_Z4testR1A
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN1A4testEv,"axG",@progbits,_ZN1A4testEv,comdat
	.weak	_ZN1A4testEv            # -- Begin function _ZN1A4testEv
	.p2align	4, 0x90
	.type	_ZN1A4testEv,@function
_ZN1A4testEv:                           # @_ZN1A4testEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_ZN1A4testEv, .Lfunc_end1-_ZN1A4testEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z5testsv               # -- Begin function _Z5testsv
	.p2align	4, 0x90
	.type	_Z5testsv,@function
_Z5testsv:                              # @_Z5testsv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	leaq	-40(%rbp), %rdi
	callq	_ZN6mspace1AC2Ev
.Ltmp0:
	leaq	-88(%rbp), %rdi
	callq	_ZN6mspace1DC2Ev
.Ltmp1:
	jmp	.LBB2_1
.LBB2_1:
.Ltmp2:
	leaq	-152(%rbp), %rdi
	callq	_ZN6mspace1BC2Ev
.Ltmp3:
	jmp	.LBB2_2
.LBB2_2:
	leaq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
.Ltmp4:
	callq	_ZN6mspace1B5testbEv
.Ltmp5:
	jmp	.LBB2_3
.LBB2_3:
.Ltmp6:
	leaq	-152(%rbp), %rdi
	callq	_ZN6mspace1B5nimasEv
.Ltmp7:
	jmp	.LBB2_4
.LBB2_4:
	movq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
.Ltmp11:
	leaq	-152(%rbp), %rdi
	callq	_ZN6mspace1BD2Ev
.Ltmp12:
	jmp	.LBB2_5
.LBB2_5:
.Ltmp16:
	leaq	-88(%rbp), %rdi
	callq	_ZN6mspace1DD2Ev
.Ltmp17:
	jmp	.LBB2_6
.LBB2_6:
	leaq	-40(%rbp), %rdi
	callq	_ZN6mspace1AD2Ev
	addq	$192, %rsp
	popq	%rbp
	retq
.LBB2_7:
.Ltmp18:
	movl	%edx, %ecx
	movq	%rax, -96(%rbp)
	movl	%ecx, -100(%rbp)
	jmp	.LBB2_13
.LBB2_8:
.Ltmp13:
	movl	%edx, %ecx
	movq	%rax, -96(%rbp)
	movl	%ecx, -100(%rbp)
	jmp	.LBB2_11
.LBB2_9:
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -96(%rbp)
	movl	%ecx, -100(%rbp)
.Ltmp9:
	leaq	-152(%rbp), %rdi
	callq	_ZN6mspace1BD2Ev
.Ltmp10:
	jmp	.LBB2_10
.LBB2_10:
	jmp	.LBB2_11
.LBB2_11:
.Ltmp14:
	leaq	-88(%rbp), %rdi
	callq	_ZN6mspace1DD2Ev
.Ltmp15:
	jmp	.LBB2_12
.LBB2_12:
	jmp	.LBB2_13
.LBB2_13:
.Ltmp19:
	leaq	-40(%rbp), %rdi
	callq	_ZN6mspace1AD2Ev
.Ltmp20:
	jmp	.LBB2_14
.LBB2_14:
	jmp	.LBB2_15
.LBB2_15:
	movq	-96(%rbp), %rdi
	callq	_Unwind_Resume
.LBB2_16:
.Ltmp21:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end2:
	.size	_Z5testsv, .Lfunc_end2-_Z5testsv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	125                     # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	117                     # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp18-.Lfunc_begin0   #     jumps to .Ltmp18
	.byte	0                       #   On action: cleanup
	.long	.Ltmp2-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp2           #   Call between .Ltmp2 and .Ltmp3
	.long	.Ltmp13-.Lfunc_begin0   #     jumps to .Ltmp13
	.byte	0                       #   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp7-.Ltmp4           #   Call between .Ltmp4 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.long	.Ltmp11-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Ltmp12-.Ltmp11         #   Call between .Ltmp11 and .Ltmp12
	.long	.Ltmp13-.Lfunc_begin0   #     jumps to .Ltmp13
	.byte	0                       #   On action: cleanup
	.long	.Ltmp16-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Ltmp17-.Ltmp16         #   Call between .Ltmp16 and .Ltmp17
	.long	.Ltmp18-.Lfunc_begin0   #     jumps to .Ltmp18
	.byte	0                       #   On action: cleanup
	.long	.Ltmp17-.Lfunc_begin0   # >> Call Site 7 <<
	.long	.Ltmp9-.Ltmp17          #   Call between .Ltmp17 and .Ltmp9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin0    # >> Call Site 8 <<
	.long	.Ltmp20-.Ltmp9          #   Call between .Ltmp9 and .Ltmp20
	.long	.Ltmp21-.Lfunc_begin0   #     jumps to .Ltmp21
	.byte	1                       #   On action: 1
	.long	.Ltmp20-.Lfunc_begin0   # >> Call Site 9 <<
	.long	.Lfunc_end2-.Ltmp20     #   Call between .Ltmp20 and .Lfunc_end2
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZN6mspace1AC2Ev,"axG",@progbits,_ZN6mspace1AC2Ev,comdat
	.weak	_ZN6mspace1AC2Ev        # -- Begin function _ZN6mspace1AC2Ev
	.p2align	4, 0x90
	.type	_ZN6mspace1AC2Ev,@function
_ZN6mspace1AC2Ev:                       # @_ZN6mspace1AC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi9:
	.cfi_def_cfa_offset 16
.Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZTVN6mspace1AE, %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$16, %rdi
	callq	_ZNSt6vectorIiSaIiEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZN6mspace1AC2Ev, .Lfunc_end3-_ZN6mspace1AC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1DC2Ev,"axG",@progbits,_ZN6mspace1DC2Ev,comdat
	.weak	_ZN6mspace1DC2Ev        # -- Begin function _ZN6mspace1DC2Ev
	.p2align	4, 0x90
	.type	_ZN6mspace1DC2Ev,@function
_ZN6mspace1DC2Ev:                       # @_ZN6mspace1DC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi12:
	.cfi_def_cfa_offset 16
.Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN6mspace1AC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZN6mspace1DC2Ev, .Lfunc_end4-_ZN6mspace1DC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1BC2Ev,"axG",@progbits,_ZN6mspace1BC2Ev,comdat
	.weak	_ZN6mspace1BC2Ev        # -- Begin function _ZN6mspace1BC2Ev
	.p2align	4, 0x90
	.type	_ZN6mspace1BC2Ev,@function
_ZN6mspace1BC2Ev:                       # @_ZN6mspace1BC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi15:
	.cfi_def_cfa_offset 16
.Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN6mspace1AC2Ev
	movabsq	$_ZTVN6mspace1BE, %rax
	addq	$16, %rax
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, (%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_ZN6mspace1BC2Ev, .Lfunc_end5-_ZN6mspace1BC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1B5testbEv,"axG",@progbits,_ZN6mspace1B5testbEv,comdat
	.weak	_ZN6mspace1B5testbEv    # -- Begin function _ZN6mspace1B5testbEv
	.p2align	4, 0x90
	.type	_ZN6mspace1B5testbEv,@function
_ZN6mspace1B5testbEv:                   # @_ZN6mspace1B5testbEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi18:
	.cfi_def_cfa_offset 16
.Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_ZN6mspace1B5testbEv, .Lfunc_end6-_ZN6mspace1B5testbEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1B5nimasEv,"axG",@progbits,_ZN6mspace1B5nimasEv,comdat
	.weak	_ZN6mspace1B5nimasEv    # -- Begin function _ZN6mspace1B5nimasEv
	.p2align	4, 0x90
	.type	_ZN6mspace1B5nimasEv,@function
_ZN6mspace1B5nimasEv:                   # @_ZN6mspace1B5nimasEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi21:
	.cfi_def_cfa_offset 16
.Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_ZN6mspace1B5nimasEv, .Lfunc_end7-_ZN6mspace1B5nimasEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1BD2Ev,"axG",@progbits,_ZN6mspace1BD2Ev,comdat
	.weak	_ZN6mspace1BD2Ev        # -- Begin function _ZN6mspace1BD2Ev
	.p2align	4, 0x90
	.type	_ZN6mspace1BD2Ev,@function
_ZN6mspace1BD2Ev:                       # @_ZN6mspace1BD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi24:
	.cfi_def_cfa_offset 16
.Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN6mspace1AD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_ZN6mspace1BD2Ev, .Lfunc_end8-_ZN6mspace1BD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	pushq	%rax
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end9:
	.size	__clang_call_terminate, .Lfunc_end9-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN6mspace1DD2Ev,"axG",@progbits,_ZN6mspace1DD2Ev,comdat
	.weak	_ZN6mspace1DD2Ev        # -- Begin function _ZN6mspace1DD2Ev
	.p2align	4, 0x90
	.type	_ZN6mspace1DD2Ev,@function
_ZN6mspace1DD2Ev:                       # @_ZN6mspace1DD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi27:
	.cfi_def_cfa_offset 16
.Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN6mspace1AD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZN6mspace1DD2Ev, .Lfunc_end10-_ZN6mspace1DD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1AD2Ev,"axG",@progbits,_ZN6mspace1AD2Ev,comdat
	.weak	_ZN6mspace1AD2Ev        # -- Begin function _ZN6mspace1AD2Ev
	.p2align	4, 0x90
	.type	_ZN6mspace1AD2Ev,@function
_ZN6mspace1AD2Ev:                       # @_ZN6mspace1AD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi30:
	.cfi_def_cfa_offset 16
.Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZTVN6mspace1AE, %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$16, %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_ZN6mspace1AD2Ev, .Lfunc_end11-_ZN6mspace1AD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# BB#0:
	pushq	%rbp
.Lcfi33:
	.cfi_def_cfa_offset 16
.Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi35:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	_ZN1AC2Ev
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	(%rcx), %rcx
.Ltmp22:
	callq	*%rcx
.Ltmp23:
	jmp	.LBB12_1
.LBB12_1:
	leaq	-40(%rbp), %rdi
	callq	_ZN1AD2Ev
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.LBB12_2:
.Ltmp24:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
.Ltmp25:
	leaq	-40(%rbp), %rdi
	callq	_ZN1AD2Ev
.Ltmp26:
	jmp	.LBB12_3
.LBB12_3:
	jmp	.LBB12_4
.LBB12_4:
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume
.LBB12_5:
.Ltmp27:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table12:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp22-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp22
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp22-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Ltmp23-.Ltmp22         #   Call between .Ltmp22 and .Ltmp23
	.long	.Ltmp24-.Lfunc_begin1   #     jumps to .Ltmp24
	.byte	0                       #   On action: cleanup
	.long	.Ltmp23-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Ltmp25-.Ltmp23         #   Call between .Ltmp23 and .Ltmp25
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp25-.Lfunc_begin1   # >> Call Site 4 <<
	.long	.Ltmp26-.Ltmp25         #   Call between .Ltmp25 and .Ltmp26
	.long	.Ltmp27-.Lfunc_begin1   #     jumps to .Ltmp27
	.byte	1                       #   On action: 1
	.long	.Ltmp26-.Lfunc_begin1   # >> Call Site 5 <<
	.long	.Lfunc_end12-.Ltmp26    #   Call between .Ltmp26 and .Lfunc_end12
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZN1AC2Ev,"axG",@progbits,_ZN1AC2Ev,comdat
	.weak	_ZN1AC2Ev               # -- Begin function _ZN1AC2Ev
	.p2align	4, 0x90
	.type	_ZN1AC2Ev,@function
_ZN1AC2Ev:                              # @_ZN1AC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi36:
	.cfi_def_cfa_offset 16
.Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZTV1A, %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$16, %rdi
	callq	_ZNSt6vectorIiSaIiEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_ZN1AC2Ev, .Lfunc_end13-_ZN1AC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN1AD2Ev,"axG",@progbits,_ZN1AD2Ev,comdat
	.weak	_ZN1AD2Ev               # -- Begin function _ZN1AD2Ev
	.p2align	4, 0x90
	.type	_ZN1AD2Ev,@function
_ZN1AD2Ev:                              # @_ZN1AD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi39:
	.cfi_def_cfa_offset 16
.Lcfi40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZTV1A, %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$16, %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_ZN1AD2Ev, .Lfunc_end14-_ZN1AD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2Ev # -- Begin function _ZNSt6vectorIiSaIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2Ev,@function
_ZNSt6vectorIiSaIiEEC2Ev:               # @_ZNSt6vectorIiSaIiEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi42:
	.cfi_def_cfa_offset 16
.Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .Lfunc_end15-_ZNSt6vectorIiSaIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6mspace1A5nimasEv,"axG",@progbits,_ZN6mspace1A5nimasEv,comdat
	.weak	_ZN6mspace1A5nimasEv    # -- Begin function _ZN6mspace1A5nimasEv
	.p2align	4, 0x90
	.type	_ZN6mspace1A5nimasEv,@function
_ZN6mspace1A5nimasEv:                   # @_ZN6mspace1A5nimasEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi45:
	.cfi_def_cfa_offset 16
.Lcfi46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_ZN6mspace1A5nimasEv, .Lfunc_end16-_ZN6mspace1A5nimasEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev,@function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:        # @_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi48:
	.cfi_def_cfa_offset 16
.Lcfi49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .Lfunc_end17-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi51:
	.cfi_def_cfa_offset 16
.Lcfi52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSaIiEC2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .Lfunc_end18-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC2Ev,comdat
	.weak	_ZNSaIiEC2Ev            # -- Begin function _ZNSaIiEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiEC2Ev,@function
_ZNSaIiEC2Ev:                           # @_ZNSaIiEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi54:
	.cfi_def_cfa_offset 16
.Lcfi55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_ZNSaIiEC2Ev, .Lfunc_end19-_ZNSaIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi57:
	.cfi_def_cfa_offset 16
.Lcfi58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi59:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .Lfunc_end20-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEED2Ev # -- Begin function _ZNSt6vectorIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEED2Ev,@function
_ZNSt6vectorIiSaIiEED2Ev:               # @_ZNSt6vectorIiSaIiEED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# BB#0:
	pushq	%rbp
.Lcfi60:
	.cfi_def_cfa_offset 16
.Lcfi61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
.Ltmp28:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
.Ltmp29:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB21_1
.LBB21_1:
.Ltmp30:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
.Ltmp31:
	jmp	.LBB21_2
.LBB21_2:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB21_3:
.Ltmp32:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp33:
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
.Ltmp34:
	jmp	.LBB21_4
.LBB21_4:
	jmp	.LBB21_5
.LBB21_5:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.LBB21_6:
.Ltmp35:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end21:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .Lfunc_end21-_ZNSt6vectorIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table21:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Ltmp28-.Lfunc_begin2   # >> Call Site 1 <<
	.long	.Ltmp31-.Ltmp28         #   Call between .Ltmp28 and .Ltmp31
	.long	.Ltmp32-.Lfunc_begin2   #     jumps to .Ltmp32
	.byte	0                       #   On action: cleanup
	.long	.Ltmp31-.Lfunc_begin2   # >> Call Site 2 <<
	.long	.Ltmp33-.Ltmp31         #   Call between .Ltmp31 and .Ltmp33
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp33-.Lfunc_begin2   # >> Call Site 3 <<
	.long	.Ltmp34-.Ltmp33         #   Call between .Ltmp33 and .Ltmp34
	.long	.Ltmp35-.Lfunc_begin2   #     jumps to .Ltmp35
	.byte	1                       #   On action: 1
	.long	.Ltmp34-.Lfunc_begin2   # >> Call Site 4 <<
	.long	.Lfunc_end21-.Ltmp34    #   Call between .Ltmp34 and .Lfunc_end21
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi63:
	.cfi_def_cfa_offset 16
.Lcfi64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPiEvT_S1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, .Lfunc_end22-_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi66:
	.cfi_def_cfa_offset 16
.Lcfi67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi68:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end23-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev,@function
_ZNSt12_Vector_baseIiSaIiEED2Ev:        # @_ZNSt12_Vector_baseIiSaIiEED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# BB#0:
	pushq	%rbp
.Lcfi69:
	.cfi_def_cfa_offset 16
.Lcfi70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
.Ltmp36:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
.Ltmp37:
	jmp	.LBB24_1
.LBB24_1:
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB24_2:
.Ltmp38:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
# BB#3:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .Lfunc_end24-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table24:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp36-.Lfunc_begin3   # >> Call Site 1 <<
	.long	.Ltmp37-.Ltmp36         #   Call between .Ltmp36 and .Ltmp37
	.long	.Ltmp38-.Lfunc_begin3   #     jumps to .Ltmp38
	.byte	0                       #   On action: cleanup
	.long	.Ltmp37-.Lfunc_begin3   # >> Call Site 2 <<
	.long	.Lfunc_end24-.Ltmp37    #   Call between .Ltmp37 and .Lfunc_end24
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPiEvT_S1_ # -- Begin function _ZSt8_DestroyIPiEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiEvT_S1_,@function
_ZSt8_DestroyIPiEvT_S1_:                # @_ZSt8_DestroyIPiEvT_S1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi72:
	.cfi_def_cfa_offset 16
.Lcfi73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_ZSt8_DestroyIPiEvT_S1_, .Lfunc_end25-_ZSt8_DestroyIPiEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi75:
	.cfi_def_cfa_offset 16
.Lcfi76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .Lfunc_end26-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim # -- Begin function _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,@function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim: # @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi78:
	.cfi_def_cfa_offset 16
.Lcfi79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	je	.LBB27_2
# BB#1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim
.LBB27_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .Lfunc_end27-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi81:
	.cfi_def_cfa_offset 16
.Lcfi82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .Lfunc_end28-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim # -- Begin function _ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim,@function
_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim: # @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi84:
	.cfi_def_cfa_offset 16
.Lcfi85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim, .Lfunc_end29-_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,@function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim: # @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi87:
	.cfi_def_cfa_offset 16
.Lcfi88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .Lfunc_end30-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED2Ev,comdat
	.weak	_ZNSaIiED2Ev            # -- Begin function _ZNSaIiED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiED2Ev,@function
_ZNSaIiED2Ev:                           # @_ZNSaIiED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi90:
	.cfi_def_cfa_offset 16
.Lcfi91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_ZNSaIiED2Ev, .Lfunc_end31-_ZNSaIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi93:
	.cfi_def_cfa_offset 16
.Lcfi94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi95:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .Lfunc_end32-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN1A5nimasEv,"axG",@progbits,_ZN1A5nimasEv,comdat
	.weak	_ZN1A5nimasEv           # -- Begin function _ZN1A5nimasEv
	.p2align	4, 0x90
	.type	_ZN1A5nimasEv,@function
_ZN1A5nimasEv:                          # @_ZN1A5nimasEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi96:
	.cfi_def_cfa_offset 16
.Lcfi97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	_ZN1A5nimasEv, .Lfunc_end33-_ZN1A5nimasEv
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1\n"
	.size	.L.str, 3

	.type	_ZTVN6mspace1AE,@object # @_ZTVN6mspace1AE
	.section	.rodata._ZTVN6mspace1AE,"aG",@progbits,_ZTVN6mspace1AE,comdat
	.weak	_ZTVN6mspace1AE
	.p2align	3
_ZTVN6mspace1AE:
	.quad	0
	.quad	_ZTIN6mspace1AE
	.quad	_ZN6mspace1A5nimasEv
	.size	_ZTVN6mspace1AE, 24

	.type	_ZTSN6mspace1AE,@object # @_ZTSN6mspace1AE
	.section	.rodata._ZTSN6mspace1AE,"aG",@progbits,_ZTSN6mspace1AE,comdat
	.weak	_ZTSN6mspace1AE
_ZTSN6mspace1AE:
	.asciz	"N6mspace1AE"
	.size	_ZTSN6mspace1AE, 12

	.type	_ZTIN6mspace1AE,@object # @_ZTIN6mspace1AE
	.section	.rodata._ZTIN6mspace1AE,"aG",@progbits,_ZTIN6mspace1AE,comdat
	.weak	_ZTIN6mspace1AE
	.p2align	3
_ZTIN6mspace1AE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN6mspace1AE
	.size	_ZTIN6mspace1AE, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"caonima"
	.size	.L.str.1, 8

	.type	_ZTVN6mspace1BE,@object # @_ZTVN6mspace1BE
	.section	.rodata._ZTVN6mspace1BE,"aG",@progbits,_ZTVN6mspace1BE,comdat
	.weak	_ZTVN6mspace1BE
	.p2align	3
_ZTVN6mspace1BE:
	.quad	0
	.quad	_ZTIN6mspace1BE
	.quad	_ZN6mspace1B5nimasEv
	.size	_ZTVN6mspace1BE, 24

	.type	_ZTSN6mspace1BE,@object # @_ZTSN6mspace1BE
	.section	.rodata._ZTSN6mspace1BE,"aG",@progbits,_ZTSN6mspace1BE,comdat
	.weak	_ZTSN6mspace1BE
_ZTSN6mspace1BE:
	.asciz	"N6mspace1BE"
	.size	_ZTSN6mspace1BE, 12

	.type	_ZTSN6mspace1CE,@object # @_ZTSN6mspace1CE
	.section	.rodata._ZTSN6mspace1CE,"aG",@progbits,_ZTSN6mspace1CE,comdat
	.weak	_ZTSN6mspace1CE
_ZTSN6mspace1CE:
	.asciz	"N6mspace1CE"
	.size	_ZTSN6mspace1CE, 12

	.type	_ZTIN6mspace1CE,@object # @_ZTIN6mspace1CE
	.section	.rodata._ZTIN6mspace1CE,"aG",@progbits,_ZTIN6mspace1CE,comdat
	.weak	_ZTIN6mspace1CE
	.p2align	3
_ZTIN6mspace1CE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN6mspace1CE
	.size	_ZTIN6mspace1CE, 16

	.type	_ZTIN6mspace1BE,@object # @_ZTIN6mspace1BE
	.section	.rodata._ZTIN6mspace1BE,"aG",@progbits,_ZTIN6mspace1BE,comdat
	.weak	_ZTIN6mspace1BE
	.p2align	4
_ZTIN6mspace1BE:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSN6mspace1BE
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	_ZTIN6mspace1AE
	.quad	2                       # 0x2
	.quad	_ZTIN6mspace1CE
	.quad	10240                   # 0x2800
	.size	_ZTIN6mspace1BE, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"caonima666"
	.size	.L.str.2, 11

	.type	_ZTV1A,@object          # @_ZTV1A
	.section	.rodata._ZTV1A,"aG",@progbits,_ZTV1A,comdat
	.weak	_ZTV1A
	.p2align	3
_ZTV1A:
	.quad	0
	.quad	_ZTI1A
	.quad	_ZN1A5nimasEv
	.size	_ZTV1A, 24

	.type	_ZTS1A,@object          # @_ZTS1A
	.section	.rodata._ZTS1A,"aG",@progbits,_ZTS1A,comdat
	.weak	_ZTS1A
_ZTS1A:
	.asciz	"1A"
	.size	_ZTS1A, 3

	.type	_ZTI1A,@object          # @_ZTI1A
	.section	.rodata._ZTI1A,"aG",@progbits,_ZTI1A,comdat
	.weak	_ZTI1A
	.p2align	3
_ZTI1A:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS1A
	.size	_ZTI1A, 16


	.ident	"clang version 5.0.1 (tags/RELEASE_501/final 322011)"
	.section	".note.GNU-stack","",@progbits
