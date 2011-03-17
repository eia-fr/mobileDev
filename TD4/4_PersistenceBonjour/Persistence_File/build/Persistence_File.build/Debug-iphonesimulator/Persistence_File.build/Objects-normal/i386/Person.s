	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.section __DWARF,__debug_macinfo,regular,debug
Lsection__debug_macinfo:
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.section __DWARF,__debug_inlined,regular,debug
Lsection__debug_inlined:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
	.section __DWARF,__debug_abbrev,regular,debug
Ldebug_abbrev0:
	.section __DWARF,__debug_info,regular,debug
Ldebug_info0:
	.section __DWARF,__debug_line,regular,debug
Ldebug_line0:
	.text
Ltext0:
"-[Person initWithName:birthDate:weight:isMarried:]":
LFB155:
	.file 1 "/Data-Wagen/Master-HES/2010-11_MSE_Admin_lectures/AMS_2010-11/Pre\314\201sentations AMS 2010/Cours8-Persistence/Cours8-Persitence-demos-exercices/Cours8-Persistence iPhone/Persistence_File/Classes/Person.m"
	.loc 1 18 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$52, %esp
LCFI3:
	call	L3
"L00000000001$pb":
L3:
	popl	%ebx
	movl	28(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 1 19 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	leal	L_OBJC_CLASSLIST_SUP_REFS_$_0-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	leal	-16(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_0-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSendSuper2
	movl	%eax, 8(%ebp)
	.loc 1 21 0
	movl	8(%ebp), %ecx
	leal	L_OBJC_SELECTOR_REFERENCES_1-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	.loc 1 22 0
	movl	8(%ebp), %ecx
	leal	L_OBJC_SELECTOR_REFERENCES_2-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	.loc 1 23 0
	movl	8(%ebp), %ecx
	leal	L_OBJC_SELECTOR_REFERENCES_3-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	.loc 1 24 0
	movl	8(%ebp), %ecx
	movsbl	-28(%ebp),%edx
	leal	L_OBJC_SELECTOR_REFERENCES_4-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	.loc 1 26 0
	movl	8(%ebp), %eax
	.loc 1 27 0
	addl	$52, %esp
	popl	%ebx
	leave
	ret
LFE155:
	.cstring
LC0:
	.ascii "yyyy-MM-dd\0"
	.section __DATA, __cfstring
	.align 2
LC1:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC0
	.long	10
	.text
"-[Person dateFormatter]":
LFB156:
	.loc 1 31 0
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	pushl	%ebx
LCFI6:
	subl	$36, %esp
LCFI7:
	call	L6
"L00000000002$pb":
L6:
	popl	%ebx
	.loc 1 32 0
	leal	L_OBJC_CLASSLIST_REFERENCES_$_1-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_5-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_0-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_6-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, -12(%ebp)
	.loc 1 33 0
	movl	-12(%ebp), %ecx
	leal	LC1-"L00000000002$pb"(%ebx), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_7-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	.loc 1 35 0
	movl	-12(%ebp), %eax
	.loc 1 36 0
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE156:
	.cstring
LC2:
	.ascii "aFilePath:  %@\0"
	.section __DATA, __cfstring
	.align 2
LC3:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC2
	.long	14
	.cstring
LC4:
	.ascii "%@|%@|%f|%d\0"
	.section __DATA, __cfstring
	.align 2
LC5:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC4
	.long	11
	.text
"-[Person saveToFile:]":
LFB157:
	.loc 1 40 0
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	pushl	%edi
LCFI10:
	pushl	%esi
LCFI11:
	pushl	%ebx
LCFI12:
	subl	$76, %esp
LCFI13:
	call	L9
"L00000000003$pb":
L9:
	popl	%ebx
	.loc 1 41 0
	leal	LC3-"L00000000003$pb"(%ebx), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_NSLog
	.loc 1 42 0
	leal	L_OBJC_CLASSLIST_REFERENCES_$_2-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.married$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%edi
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.weight$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movss	(%eax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%ebp)
	movl	8(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_8-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %ecx
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.birthDate$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_9-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.name$non_lazy_ptr-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	LC5-"L00000000003$pb"(%ebx), %ecx
	leal	L_OBJC_SELECTOR_REFERENCES_10-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edi, 28(%esp)
	movsd	-56(%ebp), %xmm0
	movsd	%xmm0, 20(%esp)
	movl	-44(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_objc_msgSend
	movl	%eax, -28(%ebp)
	.loc 1 46 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 47 0
	movl	-32(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_11-"L00000000003$pb"(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 20(%esp)
	movl	$4, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	.loc 1 48 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
LFE157:
	.cstring
LC6:
	.ascii "|\0"
	.section __DATA, __cfstring
	.align 2
LC7:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC6
	.long	1
	.text
"-[Person restoreFromFile:]":
LFB158:
	.loc 1 52 0
	pushl	%ebp
LCFI14:
	movl	%esp, %ebp
LCFI15:
	pushl	%edi
LCFI16:
	pushl	%esi
LCFI17:
	pushl	%ebx
LCFI18:
	subl	$60, %esp
LCFI19:
	call	L12
"L00000000004$pb":
L12:
	popl	%ebx
	.loc 1 53 0
	leal	L_OBJC_CLASSLIST_REFERENCES_$_2-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	leal	L_OBJC_SELECTOR_REFERENCES_12-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	movl	$4, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	movl	%eax, -28(%ebp)
	.loc 1 55 0
	movl	-28(%ebp), %ecx
	leal	LC7-"L00000000004$pb"(%ebx), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_13-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	movl	%eax, -32(%ebp)
	.loc 1 57 0
	movl	8(%ebp), %esi
	movl	-32(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_14-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_1-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_objc_msgSend
	.loc 1 58 0
	movl	8(%ebp), %esi
	movl	8(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_8-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edi
	movl	-32(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_14-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_15-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_2-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_objc_msgSend
	.loc 1 59 0
	movl	8(%ebp), %esi
	movl	-32(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_14-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_16-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend_fpret
	leal	L_OBJC_SELECTOR_REFERENCES_3-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	fstps	8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_objc_msgSend
	.loc 1 60 0
	movl	8(%ebp), %esi
	movl	-32(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_14-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_17-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movsbl	%al,%edx
	leal	L_OBJC_SELECTOR_REFERENCES_4-"L00000000004$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_objc_msgSend
	.loc 1 61 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
LFE158:
"-[Person married]":
LFB159:
	.loc 1 14 0
	pushl	%ebp
LCFI20:
	movl	%esp, %ebp
LCFI21:
	subl	$8, %esp
LCFI22:
	call	L15
"L00000000005$pb":
L15:
	popl	%ecx
	.loc 1 14 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.married$non_lazy_ptr-"L00000000005$pb"(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	leave
	ret
LFE159:
"-[Person setMarried:]":
LFB160:
	.loc 1 14 0
	pushl	%ebp
LCFI23:
	movl	%esp, %ebp
LCFI24:
	subl	$24, %esp
LCFI25:
	call	L18
"L00000000006$pb":
L18:
	popl	%ecx
	movl	16(%ebp), %eax
	movb	%al, -12(%ebp)
	.loc 1 14 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.married$non_lazy_ptr-"L00000000006$pb"(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	-12(%ebp), %eax
	movb	%al, (%edx)
	leave
	ret
LFE160:
"-[Person weight]":
LFB161:
	.loc 1 14 0
	pushl	%ebp
LCFI26:
	movl	%esp, %ebp
LCFI27:
	subl	$24, %esp
LCFI28:
	call	L21
"L00000000007$pb":
L21:
	popl	%ecx
	.loc 1 14 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.weight$non_lazy_ptr-"L00000000007$pb"(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movss	-12(%ebp), %xmm0
	movss	%xmm0, -12(%ebp)
	flds	-12(%ebp)
	leave
	ret
LFE161:
"-[Person setWeight:]":
LFB162:
	.loc 1 14 0
	pushl	%ebp
LCFI29:
	movl	%esp, %ebp
LCFI30:
	subl	$8, %esp
LCFI31:
	call	L24
"L00000000008$pb":
L24:
	popl	%ecx
	.loc 1 14 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.weight$non_lazy_ptr-"L00000000008$pb"(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	leave
	ret
LFE162:
"-[Person birthDate]":
LFB163:
	.loc 1 14 0
	pushl	%ebp
LCFI32:
	movl	%esp, %ebp
LCFI33:
	subl	$8, %esp
LCFI34:
	call	L27
"L00000000009$pb":
L27:
	popl	%ecx
	.loc 1 14 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.birthDate$non_lazy_ptr-"L00000000009$pb"(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	leave
	ret
LFE163:
"-[Person setBirthDate:]":
LFB164:
	.loc 1 14 0
	pushl	%ebp
LCFI35:
	movl	%esp, %ebp
LCFI36:
	pushl	%ebx
LCFI37:
	subl	$36, %esp
LCFI38:
	call	L30
"L00000000010$pb":
L30:
	popl	%ebx
	.loc 1 14 0
	movl	16(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.birthDate$non_lazy_ptr-"L00000000010$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_setProperty
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE164:
"-[Person name]":
LFB165:
	.loc 1 14 0
	pushl	%ebp
LCFI39:
	movl	%esp, %ebp
LCFI40:
	subl	$8, %esp
LCFI41:
	call	L33
"L00000000011$pb":
L33:
	popl	%ecx
	.loc 1 14 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.name$non_lazy_ptr-"L00000000011$pb"(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	leave
	ret
LFE165:
"-[Person setName:]":
LFB166:
	.loc 1 14 0
	pushl	%ebp
LCFI42:
	movl	%esp, %ebp
LCFI43:
	pushl	%ebx
LCFI44:
	subl	$36, %esp
LCFI45:
	call	L36
"L00000000012$pb":
L36:
	popl	%ebx
	.loc 1 14 0
	movl	16(%ebp), %edx
	leal	L_OBJC_IVAR_$_Person.name$non_lazy_ptr-"L00000000012$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_setProperty
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE166:
	.cstring
L_OBJC_METH_VAR_NAME_0:
	.ascii "name\0"
L_OBJC_METH_VAR_TYPE_0:
	.ascii "@\"NSString\"\0"
L_OBJC_METH_VAR_NAME_1:
	.ascii "birthDate\0"
L_OBJC_METH_VAR_TYPE_1:
	.ascii "@\"NSDate\"\0"
L_OBJC_METH_VAR_NAME_2:
	.ascii "weight\0"
L_OBJC_METH_VAR_TYPE_2:
	.ascii "f\0"
L_OBJC_METH_VAR_NAME_3:
	.ascii "married\0"
L_OBJC_METH_VAR_TYPE_3:
	.ascii "c\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_$_INSTANCE_VARIABLES_Person:
	.long	20
	.long	4
	.long	_OBJC_IVAR_$_Person.name
	.long	L_OBJC_METH_VAR_NAME_0
	.long	L_OBJC_METH_VAR_TYPE_0
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_Person.birthDate
	.long	L_OBJC_METH_VAR_NAME_1
	.long	L_OBJC_METH_VAR_TYPE_1
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_Person.weight
	.long	L_OBJC_METH_VAR_NAME_2
	.long	L_OBJC_METH_VAR_TYPE_2
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_Person.married
	.long	L_OBJC_METH_VAR_NAME_3
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	0
	.long	1
	.cstring
L_OBJC_METH_VAR_NAME_4:
	.ascii "setName:\0"
L_OBJC_METH_VAR_TYPE_4:
	.ascii "v12@0:4@8\0"
L_OBJC_METH_VAR_TYPE_5:
	.ascii "@8@0:4\0"
L_OBJC_METH_VAR_NAME_5:
	.ascii "setBirthDate:\0"
L_OBJC_METH_VAR_NAME_6:
	.ascii "setWeight:\0"
L_OBJC_METH_VAR_TYPE_6:
	.ascii "v12@0:4f8\0"
L_OBJC_METH_VAR_TYPE_7:
	.ascii "f8@0:4\0"
L_OBJC_METH_VAR_NAME_7:
	.ascii "setMarried:\0"
L_OBJC_METH_VAR_TYPE_8:
	.ascii "v12@0:4c8\0"
L_OBJC_METH_VAR_TYPE_9:
	.ascii "c8@0:4\0"
L_OBJC_METH_VAR_NAME_8:
	.ascii "restoreFromFile:\0"
L_OBJC_METH_VAR_NAME_9:
	.ascii "saveToFile:\0"
L_OBJC_METH_VAR_NAME_10:
	.ascii "dateFormatter\0"
L_OBJC_METH_VAR_NAME_11:
	.ascii "initWithName:birthDate:weight:isMarried:\0"
L_OBJC_METH_VAR_TYPE_10:
	.ascii "@24@0:4@8@12f16c20\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_$_INSTANCE_METHODS_Person:
	.long	12
	.long	12
	.long	L_OBJC_METH_VAR_NAME_4
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	"-[Person setName:]"
	.long	L_OBJC_METH_VAR_NAME_0
	.long	L_OBJC_METH_VAR_TYPE_5
	.long	"-[Person name]"
	.long	L_OBJC_METH_VAR_NAME_5
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	"-[Person setBirthDate:]"
	.long	L_OBJC_METH_VAR_NAME_1
	.long	L_OBJC_METH_VAR_TYPE_5
	.long	"-[Person birthDate]"
	.long	L_OBJC_METH_VAR_NAME_6
	.long	L_OBJC_METH_VAR_TYPE_6
	.long	"-[Person setWeight:]"
	.long	L_OBJC_METH_VAR_NAME_2
	.long	L_OBJC_METH_VAR_TYPE_7
	.long	"-[Person weight]"
	.long	L_OBJC_METH_VAR_NAME_7
	.long	L_OBJC_METH_VAR_TYPE_8
	.long	"-[Person setMarried:]"
	.long	L_OBJC_METH_VAR_NAME_3
	.long	L_OBJC_METH_VAR_TYPE_9
	.long	"-[Person married]"
	.long	L_OBJC_METH_VAR_NAME_8
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	"-[Person restoreFromFile:]"
	.long	L_OBJC_METH_VAR_NAME_9
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	"-[Person saveToFile:]"
	.long	L_OBJC_METH_VAR_NAME_10
	.long	L_OBJC_METH_VAR_TYPE_5
	.long	"-[Person dateFormatter]"
	.long	L_OBJC_METH_VAR_NAME_11
	.long	L_OBJC_METH_VAR_TYPE_10
	.long	"-[Person initWithName:birthDate:weight:isMarried:]"
	.cstring
L_OBJC_PROP_NAME_ATTR_0:
	.ascii "married\0"
L_OBJC_PROP_NAME_ATTR_1:
	.ascii "Tc,N,Vmarried\0"
L_OBJC_PROP_NAME_ATTR_2:
	.ascii "weight\0"
L_OBJC_PROP_NAME_ATTR_3:
	.ascii "Tf,N,Vweight\0"
L_OBJC_PROP_NAME_ATTR_4:
	.ascii "birthDate\0"
L_OBJC_PROP_NAME_ATTR_5:
	.ascii "T@\"NSDate\",&,N,VbirthDate\0"
L_OBJC_PROP_NAME_ATTR_6:
	.ascii "name\0"
L_OBJC_PROP_NAME_ATTR_7:
	.ascii "T@\"NSString\",&,N,Vname\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_$_PROP_LIST_Person:
	.long	8
	.long	4
	.long	L_OBJC_PROP_NAME_ATTR_0
	.long	L_OBJC_PROP_NAME_ATTR_1
	.long	L_OBJC_PROP_NAME_ATTR_2
	.long	L_OBJC_PROP_NAME_ATTR_3
	.long	L_OBJC_PROP_NAME_ATTR_4
	.long	L_OBJC_PROP_NAME_ATTR_5
	.long	L_OBJC_PROP_NAME_ATTR_6
	.long	L_OBJC_PROP_NAME_ATTR_7
	.cstring
L_OBJC_CLASS_NAME_0:
	.ascii "Person\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_METACLASS_RO_$_Person:
	.long	1
	.long	20
	.long	20
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.private_extern _OBJC_METACLASS_$_Person
.globl _OBJC_METACLASS_$_Person
	.section __DATA, __objc_data
	.align 2
_OBJC_METACLASS_$_Person:
	.long	_OBJC_METACLASS_$_NSObject
	.long	_OBJC_METACLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	l_OBJC_METACLASS_RO_$_Person
	.section __DATA, __objc_const
	.align 2
l_OBJC_CLASS_RO_$_Person:
	.long	0
	.long	4
	.long	17
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	l_OBJC_$_INSTANCE_METHODS_Person
	.long	0
	.long	l_OBJC_$_INSTANCE_VARIABLES_Person
	.long	0
	.long	l_OBJC_$_PROP_LIST_Person
	.private_extern _OBJC_CLASS_$_Person
.globl _OBJC_CLASS_$_Person
	.section __DATA, __objc_data
	.align 2
_OBJC_CLASS_$_Person:
	.long	_OBJC_METACLASS_$_Person
	.long	_OBJC_CLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	l_OBJC_CLASS_RO_$_Person
	.cstring
L_OBJC_METH_VAR_NAME_12:
	.ascii "boolValue\0"
	.section __DATA, __objc_msgrefs, coalesced
	.section __DATA, __objc_data
	.section __DATA, __objc_const
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.section __DATA, __objc_catlist, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.section __DATA, __objc_nlclslist, regular, no_dead_strip
	.section __DATA, __objc_nlcatlist, regular, no_dead_strip
	.section __DATA, __objc_protolist, coalesced, no_dead_strip
	.section __DATA, __objc_protorefs, coalesced, no_dead_strip
	.section __DATA, __objc_superrefs, regular, no_dead_strip
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.section __DATA, __objc_stringobj, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_17:
	.long	L_OBJC_METH_VAR_NAME_12
	.cstring
L_OBJC_METH_VAR_NAME_13:
	.ascii "floatValue\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_16:
	.long	L_OBJC_METH_VAR_NAME_13
	.cstring
L_OBJC_METH_VAR_NAME_14:
	.ascii "dateFromString:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_15:
	.long	L_OBJC_METH_VAR_NAME_14
	.cstring
L_OBJC_METH_VAR_NAME_15:
	.ascii "objectAtIndex:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_14:
	.long	L_OBJC_METH_VAR_NAME_15
	.cstring
L_OBJC_METH_VAR_NAME_16:
	.ascii "componentsSeparatedByString:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_13:
	.long	L_OBJC_METH_VAR_NAME_16
	.cstring
L_OBJC_METH_VAR_NAME_17:
	.ascii "stringWithContentsOfFile:encoding:error:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_12:
	.long	L_OBJC_METH_VAR_NAME_17
	.cstring
L_OBJC_METH_VAR_NAME_18:
	.ascii "writeToFile:atomically:encoding:error:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_11:
	.long	L_OBJC_METH_VAR_NAME_18
	.cstring
L_OBJC_METH_VAR_NAME_19:
	.ascii "stringWithFormat:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_10:
	.long	L_OBJC_METH_VAR_NAME_19
	.cstring
L_OBJC_METH_VAR_NAME_20:
	.ascii "stringFromDate:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_9:
	.long	L_OBJC_METH_VAR_NAME_20
	.align 2
L_OBJC_SELECTOR_REFERENCES_8:
	.long	L_OBJC_METH_VAR_NAME_10
	.cstring
L_OBJC_METH_VAR_NAME_21:
	.ascii "setDateFormat:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_7:
	.long	L_OBJC_METH_VAR_NAME_21
	.cstring
L_OBJC_METH_VAR_NAME_22:
	.ascii "autorelease\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_6:
	.long	L_OBJC_METH_VAR_NAME_22
	.cstring
L_OBJC_METH_VAR_NAME_23:
	.ascii "alloc\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_5:
	.long	L_OBJC_METH_VAR_NAME_23
	.align 2
L_OBJC_SELECTOR_REFERENCES_4:
	.long	L_OBJC_METH_VAR_NAME_7
	.align 2
L_OBJC_SELECTOR_REFERENCES_3:
	.long	L_OBJC_METH_VAR_NAME_6
	.align 2
L_OBJC_SELECTOR_REFERENCES_2:
	.long	L_OBJC_METH_VAR_NAME_5
	.align 2
L_OBJC_SELECTOR_REFERENCES_1:
	.long	L_OBJC_METH_VAR_NAME_4
	.cstring
L_OBJC_METH_VAR_NAME_24:
	.ascii "init\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_0:
	.long	L_OBJC_METH_VAR_NAME_24
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_1:
	.long	_OBJC_CLASS_$_NSDateFormatter
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_2:
	.long	_OBJC_CLASS_$_NSString
	.section __DATA, __objc_superrefs, regular, no_dead_strip
	.align 2
L_OBJC_CLASSLIST_SUP_REFS_$_0:
	.long	_OBJC_CLASS_$_Person
	.private_extern _OBJC_IVAR_$_Person.birthDate
.globl _OBJC_IVAR_$_Person.birthDate
	.section __DATA, __objc_const
	.align 2
_OBJC_IVAR_$_Person.birthDate:
	.long	8
	.private_extern _OBJC_IVAR_$_Person.name
.globl _OBJC_IVAR_$_Person.name
	.align 2
_OBJC_IVAR_$_Person.name:
	.long	4
	.private_extern _OBJC_IVAR_$_Person.weight
.globl _OBJC_IVAR_$_Person.weight
	.align 2
_OBJC_IVAR_$_Person.weight:
	.long	12
	.private_extern _OBJC_IVAR_$_Person.married
.globl _OBJC_IVAR_$_Person.married
	.align 2
_OBJC_IVAR_$_Person.married:
	.long	16
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.align 2
L_OBJC_LABEL_CLASS_$:
	.long	_OBJC_CLASS_$_Person
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.align 2
L_OBJC_IMAGE_INFO:
	.long	0
	.long	16
	.objc_class_name_Person=0
.globl .objc_class_name_Person
	.section __DWARF,__debug_frame,regular,debug
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.long	LFB155
	.set L$set$3,LFE155-LFB155
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB155
	.long L$set$4
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$6,LCFI3-LCFI1
	.long L$set$6
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE0:
LSFDE2:
	.set L$set$7,LEFDE2-LASFDE2
	.long L$set$7
LASFDE2:
	.set L$set$8,Lframe0-Lsection__debug_frame
	.long L$set$8
	.long	LFB156
	.set L$set$9,LFE156-LFB156
	.long L$set$9
	.byte	0x4
	.set L$set$10,LCFI4-LFB156
	.long L$set$10
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$11,LCFI5-LCFI4
	.long L$set$11
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$12,LCFI7-LCFI5
	.long L$set$12
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE2:
LSFDE4:
	.set L$set$13,LEFDE4-LASFDE4
	.long L$set$13
LASFDE4:
	.set L$set$14,Lframe0-Lsection__debug_frame
	.long L$set$14
	.long	LFB157
	.set L$set$15,LFE157-LFB157
	.long L$set$15
	.byte	0x4
	.set L$set$16,LCFI8-LFB157
	.long L$set$16
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI9-LCFI8
	.long L$set$17
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$18,LCFI13-LCFI9
	.long L$set$18
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.align 2
LEFDE4:
LSFDE6:
	.set L$set$19,LEFDE6-LASFDE6
	.long L$set$19
LASFDE6:
	.set L$set$20,Lframe0-Lsection__debug_frame
	.long L$set$20
	.long	LFB158
	.set L$set$21,LFE158-LFB158
	.long L$set$21
	.byte	0x4
	.set L$set$22,LCFI14-LFB158
	.long L$set$22
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$23,LCFI15-LCFI14
	.long L$set$23
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$24,LCFI19-LCFI15
	.long L$set$24
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.align 2
LEFDE6:
LSFDE8:
	.set L$set$25,LEFDE8-LASFDE8
	.long L$set$25
LASFDE8:
	.set L$set$26,Lframe0-Lsection__debug_frame
	.long L$set$26
	.long	LFB159
	.set L$set$27,LFE159-LFB159
	.long L$set$27
	.byte	0x4
	.set L$set$28,LCFI20-LFB159
	.long L$set$28
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$29,LCFI21-LCFI20
	.long L$set$29
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE8:
LSFDE10:
	.set L$set$30,LEFDE10-LASFDE10
	.long L$set$30
LASFDE10:
	.set L$set$31,Lframe0-Lsection__debug_frame
	.long L$set$31
	.long	LFB160
	.set L$set$32,LFE160-LFB160
	.long L$set$32
	.byte	0x4
	.set L$set$33,LCFI23-LFB160
	.long L$set$33
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$34,LCFI24-LCFI23
	.long L$set$34
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE10:
LSFDE12:
	.set L$set$35,LEFDE12-LASFDE12
	.long L$set$35
LASFDE12:
	.set L$set$36,Lframe0-Lsection__debug_frame
	.long L$set$36
	.long	LFB161
	.set L$set$37,LFE161-LFB161
	.long L$set$37
	.byte	0x4
	.set L$set$38,LCFI26-LFB161
	.long L$set$38
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$39,LCFI27-LCFI26
	.long L$set$39
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE12:
LSFDE14:
	.set L$set$40,LEFDE14-LASFDE14
	.long L$set$40
LASFDE14:
	.set L$set$41,Lframe0-Lsection__debug_frame
	.long L$set$41
	.long	LFB162
	.set L$set$42,LFE162-LFB162
	.long L$set$42
	.byte	0x4
	.set L$set$43,LCFI29-LFB162
	.long L$set$43
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI30-LCFI29
	.long L$set$44
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE14:
LSFDE16:
	.set L$set$45,LEFDE16-LASFDE16
	.long L$set$45
LASFDE16:
	.set L$set$46,Lframe0-Lsection__debug_frame
	.long L$set$46
	.long	LFB163
	.set L$set$47,LFE163-LFB163
	.long L$set$47
	.byte	0x4
	.set L$set$48,LCFI32-LFB163
	.long L$set$48
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$49,LCFI33-LCFI32
	.long L$set$49
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE16:
LSFDE18:
	.set L$set$50,LEFDE18-LASFDE18
	.long L$set$50
LASFDE18:
	.set L$set$51,Lframe0-Lsection__debug_frame
	.long L$set$51
	.long	LFB164
	.set L$set$52,LFE164-LFB164
	.long L$set$52
	.byte	0x4
	.set L$set$53,LCFI35-LFB164
	.long L$set$53
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$54,LCFI36-LCFI35
	.long L$set$54
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$55,LCFI38-LCFI36
	.long L$set$55
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE18:
LSFDE20:
	.set L$set$56,LEFDE20-LASFDE20
	.long L$set$56
LASFDE20:
	.set L$set$57,Lframe0-Lsection__debug_frame
	.long L$set$57
	.long	LFB165
	.set L$set$58,LFE165-LFB165
	.long L$set$58
	.byte	0x4
	.set L$set$59,LCFI39-LFB165
	.long L$set$59
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$60,LCFI40-LCFI39
	.long L$set$60
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE20:
LSFDE22:
	.set L$set$61,LEFDE22-LASFDE22
	.long L$set$61
LASFDE22:
	.set L$set$62,Lframe0-Lsection__debug_frame
	.long L$set$62
	.long	LFB166
	.set L$set$63,LFE166-LFB166
	.long L$set$63
	.byte	0x4
	.set L$set$64,LCFI42-LFB166
	.long L$set$64
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$65,LCFI43-LCFI42
	.long L$set$65
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$66,LCFI45-LCFI43
	.long L$set$66
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE22:
"-[Person married].eh" = 0
.no_dead_strip "-[Person married].eh"
"-[Person setMarried:].eh" = 0
.no_dead_strip "-[Person setMarried:].eh"
"-[Person weight].eh" = 0
.no_dead_strip "-[Person weight].eh"
"-[Person setWeight:].eh" = 0
.no_dead_strip "-[Person setWeight:].eh"
"-[Person birthDate].eh" = 0
.no_dead_strip "-[Person birthDate].eh"
"-[Person name].eh" = 0
.no_dead_strip "-[Person name].eh"
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$67,LECIE1-LSCIE1
	.long L$set$67
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
"-[Person initWithName:birthDate:weight:isMarried:].eh":
LSFDE1:
	.set L$set$68,LEFDE1-LASFDE1
	.long L$set$68
LASFDE1:
	.long	LASFDE1-EH_frame1
	.long	LFB155-.
	.set L$set$69,LFE155-LFB155
	.long L$set$69
	.byte	0x0
	.byte	0x4
	.set L$set$70,LCFI0-LFB155
	.long L$set$70
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$71,LCFI1-LCFI0
	.long L$set$71
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$72,LCFI3-LCFI1
	.long L$set$72
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE1:
"-[Person dateFormatter].eh":
LSFDE3:
	.set L$set$73,LEFDE3-LASFDE3
	.long L$set$73
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB156-.
	.set L$set$74,LFE156-LFB156
	.long L$set$74
	.byte	0x0
	.byte	0x4
	.set L$set$75,LCFI4-LFB156
	.long L$set$75
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$76,LCFI5-LCFI4
	.long L$set$76
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$77,LCFI7-LCFI5
	.long L$set$77
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE3:
"-[Person saveToFile:].eh":
LSFDE5:
	.set L$set$78,LEFDE5-LASFDE5
	.long L$set$78
LASFDE5:
	.long	LASFDE5-EH_frame1
	.long	LFB157-.
	.set L$set$79,LFE157-LFB157
	.long L$set$79
	.byte	0x0
	.byte	0x4
	.set L$set$80,LCFI8-LFB157
	.long L$set$80
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$81,LCFI9-LCFI8
	.long L$set$81
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$82,LCFI13-LCFI9
	.long L$set$82
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.align 2
LEFDE5:
"-[Person restoreFromFile:].eh":
LSFDE7:
	.set L$set$83,LEFDE7-LASFDE7
	.long L$set$83
LASFDE7:
	.long	LASFDE7-EH_frame1
	.long	LFB158-.
	.set L$set$84,LFE158-LFB158
	.long L$set$84
	.byte	0x0
	.byte	0x4
	.set L$set$85,LCFI14-LFB158
	.long L$set$85
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$86,LCFI15-LCFI14
	.long L$set$86
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$87,LCFI19-LCFI15
	.long L$set$87
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.align 2
LEFDE7:
"-[Person setBirthDate:].eh":
LSFDE19:
	.set L$set$88,LEFDE19-LASFDE19
	.long L$set$88
LASFDE19:
	.long	LASFDE19-EH_frame1
	.long	LFB164-.
	.set L$set$89,LFE164-LFB164
	.long L$set$89
	.byte	0x0
	.byte	0x4
	.set L$set$90,LCFI35-LFB164
	.long L$set$90
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$91,LCFI36-LCFI35
	.long L$set$91
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$92,LCFI38-LCFI36
	.long L$set$92
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE19:
"-[Person setName:].eh":
LSFDE23:
	.set L$set$93,LEFDE23-LASFDE23
	.long L$set$93
LASFDE23:
	.long	LASFDE23-EH_frame1
	.long	LFB166-.
	.set L$set$94,LFE166-LFB166
	.long L$set$94
	.byte	0x0
	.byte	0x4
	.set L$set$95,LCFI42-LFB166
	.long L$set$95
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$96,LCFI43-LCFI42
	.long L$set$96
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$97,LCFI45-LCFI43
	.long L$set$97
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE23:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$98,LFB155-Ltext0
	.long L$set$98
	.set L$set$99,LCFI0-Ltext0
	.long L$set$99
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$100,LCFI0-Ltext0
	.long L$set$100
	.set L$set$101,LCFI1-Ltext0
	.long L$set$101
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$102,LCFI1-Ltext0
	.long L$set$102
	.set L$set$103,LFE155-Ltext0
	.long L$set$103
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST1:
	.set L$set$104,LFB156-Ltext0
	.long L$set$104
	.set L$set$105,LCFI4-Ltext0
	.long L$set$105
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$106,LCFI4-Ltext0
	.long L$set$106
	.set L$set$107,LCFI5-Ltext0
	.long L$set$107
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$108,LCFI5-Ltext0
	.long L$set$108
	.set L$set$109,LFE156-Ltext0
	.long L$set$109
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST2:
	.set L$set$110,LFB157-Ltext0
	.long L$set$110
	.set L$set$111,LCFI8-Ltext0
	.long L$set$111
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$112,LCFI8-Ltext0
	.long L$set$112
	.set L$set$113,LCFI9-Ltext0
	.long L$set$113
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$114,LCFI9-Ltext0
	.long L$set$114
	.set L$set$115,LFE157-Ltext0
	.long L$set$115
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST3:
	.set L$set$116,LFB158-Ltext0
	.long L$set$116
	.set L$set$117,LCFI14-Ltext0
	.long L$set$117
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$118,LCFI14-Ltext0
	.long L$set$118
	.set L$set$119,LCFI15-Ltext0
	.long L$set$119
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$120,LCFI15-Ltext0
	.long L$set$120
	.set L$set$121,LFE158-Ltext0
	.long L$set$121
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST4:
	.set L$set$122,LFB159-Ltext0
	.long L$set$122
	.set L$set$123,LCFI20-Ltext0
	.long L$set$123
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$124,LCFI20-Ltext0
	.long L$set$124
	.set L$set$125,LCFI21-Ltext0
	.long L$set$125
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$126,LCFI21-Ltext0
	.long L$set$126
	.set L$set$127,LFE159-Ltext0
	.long L$set$127
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST5:
	.set L$set$128,LFB160-Ltext0
	.long L$set$128
	.set L$set$129,LCFI23-Ltext0
	.long L$set$129
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$130,LCFI23-Ltext0
	.long L$set$130
	.set L$set$131,LCFI24-Ltext0
	.long L$set$131
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$132,LCFI24-Ltext0
	.long L$set$132
	.set L$set$133,LFE160-Ltext0
	.long L$set$133
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST6:
	.set L$set$134,LFB161-Ltext0
	.long L$set$134
	.set L$set$135,LCFI26-Ltext0
	.long L$set$135
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$136,LCFI26-Ltext0
	.long L$set$136
	.set L$set$137,LCFI27-Ltext0
	.long L$set$137
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$138,LCFI27-Ltext0
	.long L$set$138
	.set L$set$139,LFE161-Ltext0
	.long L$set$139
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST7:
	.set L$set$140,LFB162-Ltext0
	.long L$set$140
	.set L$set$141,LCFI29-Ltext0
	.long L$set$141
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$142,LCFI29-Ltext0
	.long L$set$142
	.set L$set$143,LCFI30-Ltext0
	.long L$set$143
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$144,LCFI30-Ltext0
	.long L$set$144
	.set L$set$145,LFE162-Ltext0
	.long L$set$145
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST8:
	.set L$set$146,LFB163-Ltext0
	.long L$set$146
	.set L$set$147,LCFI32-Ltext0
	.long L$set$147
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$148,LCFI32-Ltext0
	.long L$set$148
	.set L$set$149,LCFI33-Ltext0
	.long L$set$149
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$150,LCFI33-Ltext0
	.long L$set$150
	.set L$set$151,LFE163-Ltext0
	.long L$set$151
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST9:
	.set L$set$152,LFB164-Ltext0
	.long L$set$152
	.set L$set$153,LCFI35-Ltext0
	.long L$set$153
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$154,LCFI35-Ltext0
	.long L$set$154
	.set L$set$155,LCFI36-Ltext0
	.long L$set$155
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$156,LCFI36-Ltext0
	.long L$set$156
	.set L$set$157,LFE164-Ltext0
	.long L$set$157
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST10:
	.set L$set$158,LFB165-Ltext0
	.long L$set$158
	.set L$set$159,LCFI39-Ltext0
	.long L$set$159
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$160,LCFI39-Ltext0
	.long L$set$160
	.set L$set$161,LCFI40-Ltext0
	.long L$set$161
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$162,LCFI40-Ltext0
	.long L$set$162
	.set L$set$163,LFE165-Ltext0
	.long L$set$163
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST11:
	.set L$set$164,LFB166-Ltext0
	.long L$set$164
	.set L$set$165,LCFI42-Ltext0
	.long L$set$165
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$166,LCFI42-Ltext0
	.long L$set$166
	.set L$set$167,LCFI43-Ltext0
	.long L$set$167
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$168,LCFI43-Ltext0
	.long L$set$168
	.set L$set$169,LFE166-Ltext0
	.long L$set$169
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
	.file 2 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/usr/include/i386/_types.h"
	.file 3 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/usr/include/runetype.h"
	.file 4 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/CoreFoundation.framework/Headers/CFDateFormatter.h"
	.file 5 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/usr/include/objc/objc.h"
	.file 6 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObjCRuntime.h"
	.file 7 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObject.h"
	.file 8 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSEnumerator.h"
	.file 9 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSDate.h"
	.file 10 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSFormatter.h"
	.file 11 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSDateFormatter.h"
	.file 12 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSValue.h"
	.file 13 "/Data-Wagen/Master-HES/2010-11_MSE_Admin_lectures/AMS_2010-11/Pre\314\201sentations AMS 2010/Cours8-Persistence/Cours8-Persitence-demos-exercices/Cours8-Persistence iPhone/Persistence_File/Classes/Person.h"
	.file 14 "<built-in>"
	.file 15 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSString.h"
	.section __DWARF,__debug_info,regular,debug
	.long	0x10f4
	.word	0x2
	.set L$set$170,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$170
	.byte	0x4
	.byte	0x1
	.ascii "GNU Objective-C 4.2.1 (Apple Inc. build 5664)\0"
	.byte	0x10
	.ascii "/Data-Wagen/Master-HES/2010-11_MSE_Admin_lectures/AMS_2010-11/Pre\314\201sentations AMS 2010/Cours8-Persistence/Cours8-Persitence-demos-exercices/Cours8-Persistence iPhone/Persistence_File/Classes/Person.m\0"
	.byte	0x2
	.long	Ltext0
	.long	Letext0
	.set L$set$171,Ldebug_line0-Lsection__debug_line
	.long L$set$171
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x3
	.ascii "__uint32_t\0"
	.byte	0x2
	.byte	0x2d
	.long	0x16c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x1d5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x3
	.ascii "__darwin_wchar_t\0"
	.byte	0x2
	.byte	0x66
	.long	0x153
	.byte	0x3
	.ascii "__darwin_rune_t\0"
	.byte	0x2
	.byte	0x6b
	.long	0x1ea
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.long	0x1b6
	.long	0x22b
	.byte	0x7
	.long	0x1b3
	.byte	0x7
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x1b6
	.byte	0x9
	.byte	0x10
	.byte	0x3
	.byte	0x51
	.long	0x27c
	.byte	0xa
	.ascii "__min\0"
	.byte	0x3
	.byte	0x52
	.long	0x202
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__max\0"
	.byte	0x3
	.byte	0x53
	.long	0x202
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "__map\0"
	.byte	0x3
	.byte	0x54
	.long	0x202
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__types\0"
	.byte	0x3
	.byte	0x55
	.long	0x27c
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x15a
	.byte	0x3
	.ascii "_RuneEntry\0"
	.byte	0x3
	.byte	0x56
	.long	0x231
	.byte	0x9
	.byte	0x8
	.byte	0x3
	.byte	0x58
	.long	0x2c4
	.byte	0xa
	.ascii "__nranges\0"
	.byte	0x3
	.byte	0x59
	.long	0x153
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__ranges\0"
	.byte	0x3
	.byte	0x5a
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x282
	.byte	0x3
	.ascii "_RuneRange\0"
	.byte	0x3
	.byte	0x5b
	.long	0x294
	.byte	0x9
	.byte	0x14
	.byte	0x3
	.byte	0x5d
	.long	0x307
	.byte	0xa
	.ascii "__name\0"
	.byte	0x3
	.byte	0x5e
	.long	0x307
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__mask\0"
	.byte	0x3
	.byte	0x5f
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x6
	.long	0x1b6
	.long	0x317
	.byte	0x7
	.long	0x1b3
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.ascii "_RuneCharClass\0"
	.byte	0x3
	.byte	0x60
	.long	0x2dc
	.byte	0xb
	.word	0xc5c
	.byte	0x3
	.byte	0x62
	.long	0x493
	.byte	0xa
	.ascii "__magic\0"
	.byte	0x3
	.byte	0x63
	.long	0x21b
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__encoding\0"
	.byte	0x3
	.byte	0x64
	.long	0x493
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__sgetrune\0"
	.byte	0x3
	.byte	0x66
	.long	0x4ce
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0xa
	.ascii "__sputrune\0"
	.byte	0x3
	.byte	0x67
	.long	0x4f9
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.byte	0xa
	.ascii "__invalid_rune\0"
	.byte	0x3
	.byte	0x68
	.long	0x202
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0xa
	.ascii "__runetype\0"
	.byte	0x3
	.byte	0x6a
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.byte	0x34
	.byte	0xa
	.ascii "__maplower\0"
	.byte	0x3
	.byte	0x6b
	.long	0x50f
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x8
	.byte	0xa
	.ascii "__mapupper\0"
	.byte	0x3
	.byte	0x6c
	.long	0x50f
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x10
	.byte	0xa
	.ascii "__runetype_ext\0"
	.byte	0x3
	.byte	0x73
	.long	0x2ca
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x18
	.byte	0xa
	.ascii "__maplower_ext\0"
	.byte	0x3
	.byte	0x74
	.long	0x2ca
	.byte	0x3
	.byte	0x23
	.byte	0xbc,0x18
	.byte	0xa
	.ascii "__mapupper_ext\0"
	.byte	0x3
	.byte	0x75
	.long	0x2ca
	.byte	0x3
	.byte	0x23
	.byte	0xc4,0x18
	.byte	0xa
	.ascii "__variable\0"
	.byte	0x3
	.byte	0x77
	.long	0x219
	.byte	0x3
	.byte	0x23
	.byte	0xcc,0x18
	.byte	0xa
	.ascii "__variable_len\0"
	.byte	0x3
	.byte	0x78
	.long	0x153
	.byte	0x3
	.byte	0x23
	.byte	0xd0,0x18
	.byte	0xa
	.ascii "__ncharclasses\0"
	.byte	0x3
	.byte	0x7d
	.long	0x153
	.byte	0x3
	.byte	0x23
	.byte	0xd4,0x18
	.byte	0xa
	.ascii "__charclasses\0"
	.byte	0x3
	.byte	0x7e
	.long	0x51f
	.byte	0x3
	.byte	0x23
	.byte	0xd8,0x18
	.byte	0x0
	.byte	0x6
	.long	0x1b6
	.long	0x4a3
	.byte	0x7
	.long	0x1b3
	.byte	0x1f
	.byte	0x0
	.byte	0xc
	.byte	0x1
	.long	0x202
	.long	0x4bd
	.byte	0xd
	.long	0x4bd
	.byte	0xd
	.long	0x1be
	.byte	0xd
	.long	0x4c8
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x4c3
	.byte	0xe
	.long	0x1b6
	.byte	0x8
	.byte	0x4
	.long	0x4bd
	.byte	0x8
	.byte	0x4
	.long	0x4a3
	.byte	0xc
	.byte	0x1
	.long	0x153
	.long	0x4f3
	.byte	0xd
	.long	0x202
	.byte	0xd
	.long	0x22b
	.byte	0xd
	.long	0x1be
	.byte	0xd
	.long	0x4f3
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x22b
	.byte	0x8
	.byte	0x4
	.long	0x4d4
	.byte	0x6
	.long	0x15a
	.long	0x50f
	.byte	0x7
	.long	0x1b3
	.byte	0xff
	.byte	0x0
	.byte	0x6
	.long	0x202
	.long	0x51f
	.byte	0x7
	.long	0x1b3
	.byte	0xff
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x317
	.byte	0x3
	.ascii "_RuneLocale\0"
	.byte	0x3
	.byte	0x7f
	.long	0x32d
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.byte	0x3
	.ascii "CFDateFormatterRef\0"
	.byte	0x4
	.byte	0x10
	.long	0x565
	.byte	0x8
	.byte	0x4
	.long	0x56b
	.byte	0xf
	.ascii "__CFDateFormatter\0"
	.byte	0x1
	.byte	0x10
	.byte	0x4
	.ascii "Class\0"
	.long	0x58b
	.byte	0xf
	.ascii "objc_class\0"
	.byte	0x1
	.byte	0x10
	.byte	0x4
	.ascii "id\0"
	.long	0x5a1
	.byte	0x11
	.ascii "objc_object\0"
	.byte	0x4
	.byte	0xe
	.byte	0x0
	.long	0x5c4
	.byte	0xa
	.ascii "isa\0"
	.byte	0x5
	.byte	0x25
	.long	0x57f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x5ca
	.byte	0xf
	.ascii "objc_selector\0"
	.byte	0x1
	.byte	0x3
	.ascii "BOOL\0"
	.byte	0x5
	.byte	0x2b
	.long	0x110
	.byte	0x3
	.ascii "NSUInteger\0"
	.byte	0x6
	.byte	0xe3
	.long	0x16c
	.byte	0x12
	.ascii "NSObject\0"
	.byte	0x10
	.byte	0x4
	.byte	0x7
	.byte	0x43
	.long	0x61a
	.byte	0x13
	.ascii "isa\0"
	.byte	0x7
	.byte	0x42
	.long	0x57f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x2
	.byte	0x0
	.byte	0x12
	.ascii "NSArray\0"
	.byte	0x10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.long	0x635
	.byte	0x14
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x12
	.ascii "NSDate\0"
	.byte	0x10
	.byte	0x4
	.byte	0x9
	.byte	0x11
	.long	0x64f
	.byte	0x14
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x15
	.byte	0x4
	.byte	0xf
	.byte	0x2d
	.long	0x90d
	.byte	0x16
	.ascii "NSASCIIStringEncoding\0"
	.byte	0x1
	.byte	0x16
	.ascii "NSNEXTSTEPStringEncoding\0"
	.byte	0x2
	.byte	0x16
	.ascii "NSJapaneseEUCStringEncoding\0"
	.byte	0x3
	.byte	0x16
	.ascii "NSUTF8StringEncoding\0"
	.byte	0x4
	.byte	0x16
	.ascii "NSISOLatin1StringEncoding\0"
	.byte	0x5
	.byte	0x16
	.ascii "NSSymbolStringEncoding\0"
	.byte	0x6
	.byte	0x16
	.ascii "NSNonLossyASCIIStringEncoding\0"
	.byte	0x7
	.byte	0x16
	.ascii "NSShiftJISStringEncoding\0"
	.byte	0x8
	.byte	0x16
	.ascii "NSISOLatin2StringEncoding\0"
	.byte	0x9
	.byte	0x16
	.ascii "NSUnicodeStringEncoding\0"
	.byte	0xa
	.byte	0x16
	.ascii "NSWindowsCP1251StringEncoding\0"
	.byte	0xb
	.byte	0x16
	.ascii "NSWindowsCP1252StringEncoding\0"
	.byte	0xc
	.byte	0x16
	.ascii "NSWindowsCP1253StringEncoding\0"
	.byte	0xd
	.byte	0x16
	.ascii "NSWindowsCP1254StringEncoding\0"
	.byte	0xe
	.byte	0x16
	.ascii "NSWindowsCP1250StringEncoding\0"
	.byte	0xf
	.byte	0x16
	.ascii "NSISO2022JPStringEncoding\0"
	.byte	0x15
	.byte	0x16
	.ascii "NSMacOSRomanStringEncoding\0"
	.byte	0x1e
	.byte	0x16
	.ascii "NSUTF16StringEncoding\0"
	.byte	0xa
	.byte	0x16
	.ascii "NSUTF16BigEndianStringEncoding\0"
	.byte	0x80,0x82,0x80,0x80,0x9
	.byte	0x16
	.ascii "NSUTF16LittleEndianStringEncoding\0"
	.byte	0x80,0x82,0x80,0xa0,0x9
	.byte	0x16
	.ascii "NSUTF32StringEncoding\0"
	.byte	0x80,0x82,0x80,0xe0,0x8
	.byte	0x16
	.ascii "NSUTF32BigEndianStringEncoding\0"
	.byte	0x80,0x82,0x80,0xc0,0x9
	.byte	0x16
	.ascii "NSUTF32LittleEndianStringEncoding\0"
	.byte	0x80,0x82,0x80,0xe0,0x9
	.byte	0x0
	.byte	0x12
	.ascii "NSString\0"
	.byte	0x10
	.byte	0x4
	.byte	0x6
	.byte	0xec
	.long	0x929
	.byte	0x14
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x12
	.ascii "NSFormatter\0"
	.byte	0x10
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.long	0x948
	.byte	0x14
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x12
	.ascii "NSDateFormatter\0"
	.byte	0x10
	.byte	0x10
	.byte	0xb
	.byte	0xf
	.long	0x9ac
	.byte	0x14
	.long	0x929
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x13
	.ascii "_attributes\0"
	.byte	0xb
	.byte	0xc
	.long	0x9d3
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.ascii "_formatter\0"
	.byte	0xb
	.byte	0xd
	.long	0x54b
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x3
	.byte	0x13
	.ascii "_counter\0"
	.byte	0xb
	.byte	0xe
	.long	0x5e6
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x3
	.byte	0x0
	.byte	0x12
	.ascii "NSMutableDictionary\0"
	.byte	0x10
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.long	0x9d3
	.byte	0x14
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x9ac
	.byte	0x12
	.ascii "NSDictionary\0"
	.byte	0x10
	.byte	0x4
	.byte	0xc
	.byte	0x7
	.long	0x9f9
	.byte	0x14
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x90d
	.byte	0x8
	.byte	0x4
	.long	0x61a
	.byte	0x12
	.ascii "Person\0"
	.byte	0x10
	.byte	0x14
	.byte	0xd
	.byte	0x12
	.long	0xa69
	.byte	0x14
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x13
	.ascii "name\0"
	.byte	0xd
	.byte	0xe
	.long	0x9f9
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.ascii "birthDate\0"
	.byte	0xd
	.byte	0xf
	.long	0xa69
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x2
	.byte	0x13
	.ascii "weight\0"
	.byte	0xd
	.byte	0x10
	.long	0x538
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x2
	.byte	0x13
	.ascii "married\0"
	.byte	0xd
	.byte	0x11
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x2
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x635
	.byte	0x17
	.set L$set$172,LASF2-Lsection__debug_str
	.long L$set$172
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	0x598
	.long	LFB155
	.long	LFE155
	.set L$set$173,LLST0-Lsection__debug_loc
	.long L$set$173
	.long	0xb06
	.byte	0x18
	.set L$set$174,LASF0-Lsection__debug_str
	.long L$set$174
	.byte	0x1
	.byte	0x12
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$175,LASF1-Lsection__debug_str
	.long L$set$175
	.byte	0x1
	.byte	0x12
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x19
	.ascii "aName\0"
	.byte	0x1
	.byte	0x12
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x19
	.ascii "aBirthDate\0"
	.byte	0x1
	.byte	0x12
	.long	0xa69
	.byte	0x2
	.byte	0x91
	.byte	0xc
	.byte	0x19
	.ascii "aWeight\0"
	.byte	0x1
	.byte	0x12
	.long	0x538
	.byte	0x2
	.byte	0x91
	.byte	0x10
	.byte	0x19
	.ascii "aStatus\0"
	.byte	0x1
	.byte	0x12
	.long	0x5da
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1a
	.ascii "objc_super\0"
	.byte	0x1
	.byte	0x13
	.long	0xb0c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0xa05
	.byte	0x11
	.ascii "_objc_super\0"
	.byte	0x8
	.byte	0xe
	.byte	0x0
	.long	0xb3d
	.byte	0x1b
	.set L$set$176,LASF0-Lsection__debug_str
	.long L$set$176
	.byte	0xe
	.byte	0x0
	.long	0x598
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "cls\0"
	.byte	0xe
	.byte	0x0
	.long	0x57f
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x17
	.set L$set$177,LASF3-Lsection__debug_str
	.long L$set$177
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	0xb8c
	.long	LFB156
	.long	LFE156
	.set L$set$178,LLST1-Lsection__debug_loc
	.long L$set$178
	.long	0xb8c
	.byte	0x18
	.set L$set$179,LASF0-Lsection__debug_str
	.long L$set$179
	.byte	0x1
	.byte	0x1f
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$180,LASF1-Lsection__debug_str
	.long L$set$180
	.byte	0x1
	.byte	0x1f
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x1a
	.ascii "myFormatter\0"
	.byte	0x1
	.byte	0x20
	.long	0xb8c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x948
	.byte	0x1c
	.set L$set$181,LASF6-Lsection__debug_str
	.long L$set$181
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	LFB157
	.long	LFE157
	.set L$set$182,LLST2-Lsection__debug_loc
	.long L$set$182
	.long	0xbfd
	.byte	0x18
	.set L$set$183,LASF0-Lsection__debug_str
	.long L$set$183
	.byte	0x1
	.byte	0x28
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$184,LASF1-Lsection__debug_str
	.long L$set$184
	.byte	0x1
	.byte	0x28
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x18
	.set L$set$185,LASF4-Lsection__debug_str
	.long L$set$185
	.byte	0x1
	.byte	0x28
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x1d
	.set L$set$186,LASF5-Lsection__debug_str
	.long L$set$186
	.byte	0x1
	.byte	0x2a
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1a
	.ascii "stringToBeSaved\0"
	.byte	0x1
	.byte	0x2e
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x0
	.byte	0x1c
	.set L$set$187,LASF7-Lsection__debug_str
	.long L$set$187
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	LFB158
	.long	LFE158
	.set L$set$188,LLST3-Lsection__debug_loc
	.long L$set$188
	.long	0xc69
	.byte	0x18
	.set L$set$189,LASF0-Lsection__debug_str
	.long L$set$189
	.byte	0x1
	.byte	0x34
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$190,LASF1-Lsection__debug_str
	.long L$set$190
	.byte	0x1
	.byte	0x34
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x18
	.set L$set$191,LASF4-Lsection__debug_str
	.long L$set$191
	.byte	0x1
	.byte	0x34
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x1d
	.set L$set$192,LASF5-Lsection__debug_str
	.long L$set$192
	.byte	0x1
	.byte	0x35
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1a
	.ascii "personComponents\0"
	.byte	0x1
	.byte	0x37
	.long	0x9ff
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x0
	.byte	0x17
	.set L$set$193,LASF8-Lsection__debug_str
	.long L$set$193
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x5da
	.long	LFB159
	.long	LFE159
	.set L$set$194,LLST4-Lsection__debug_loc
	.long L$set$194
	.long	0xca2
	.byte	0x18
	.set L$set$195,LASF0-Lsection__debug_str
	.long L$set$195
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$196,LASF1-Lsection__debug_str
	.long L$set$196
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x0
	.byte	0x1c
	.set L$set$197,LASF9-Lsection__debug_str
	.long L$set$197
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	LFB160
	.long	LFE160
	.set L$set$198,LLST5-Lsection__debug_loc
	.long L$set$198
	.long	0xce5
	.byte	0x18
	.set L$set$199,LASF0-Lsection__debug_str
	.long L$set$199
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$200,LASF1-Lsection__debug_str
	.long L$set$200
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x18
	.set L$set$201,LASF10-Lsection__debug_str
	.long L$set$201
	.byte	0x1
	.byte	0xe
	.long	0x5da
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x0
	.byte	0x17
	.set L$set$202,LASF11-Lsection__debug_str
	.long L$set$202
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x538
	.long	LFB161
	.long	LFE161
	.set L$set$203,LLST6-Lsection__debug_loc
	.long L$set$203
	.long	0xd1e
	.byte	0x18
	.set L$set$204,LASF0-Lsection__debug_str
	.long L$set$204
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$205,LASF1-Lsection__debug_str
	.long L$set$205
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x0
	.byte	0x1c
	.set L$set$206,LASF12-Lsection__debug_str
	.long L$set$206
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	LFB162
	.long	LFE162
	.set L$set$207,LLST7-Lsection__debug_loc
	.long L$set$207
	.long	0xd61
	.byte	0x18
	.set L$set$208,LASF0-Lsection__debug_str
	.long L$set$208
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$209,LASF1-Lsection__debug_str
	.long L$set$209
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x18
	.set L$set$210,LASF10-Lsection__debug_str
	.long L$set$210
	.byte	0x1
	.byte	0xe
	.long	0x538
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x0
	.byte	0x17
	.set L$set$211,LASF13-Lsection__debug_str
	.long L$set$211
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0xa69
	.long	LFB163
	.long	LFE163
	.set L$set$212,LLST8-Lsection__debug_loc
	.long L$set$212
	.long	0xd9a
	.byte	0x18
	.set L$set$213,LASF0-Lsection__debug_str
	.long L$set$213
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$214,LASF1-Lsection__debug_str
	.long L$set$214
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x0
	.byte	0x1c
	.set L$set$215,LASF14-Lsection__debug_str
	.long L$set$215
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	LFB164
	.long	LFE164
	.set L$set$216,LLST9-Lsection__debug_loc
	.long L$set$216
	.long	0xddd
	.byte	0x18
	.set L$set$217,LASF0-Lsection__debug_str
	.long L$set$217
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$218,LASF1-Lsection__debug_str
	.long L$set$218
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x18
	.set L$set$219,LASF10-Lsection__debug_str
	.long L$set$219
	.byte	0x1
	.byte	0xe
	.long	0xa69
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x0
	.byte	0x17
	.set L$set$220,LASF15-Lsection__debug_str
	.long L$set$220
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x9f9
	.long	LFB165
	.long	LFE165
	.set L$set$221,LLST10-Lsection__debug_loc
	.long L$set$221
	.long	0xe16
	.byte	0x18
	.set L$set$222,LASF0-Lsection__debug_str
	.long L$set$222
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$223,LASF1-Lsection__debug_str
	.long L$set$223
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x0
	.byte	0x1c
	.set L$set$224,LASF16-Lsection__debug_str
	.long L$set$224
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	LFB166
	.long	LFE166
	.set L$set$225,LLST11-Lsection__debug_loc
	.long L$set$225
	.long	0xe59
	.byte	0x18
	.set L$set$226,LASF0-Lsection__debug_str
	.long L$set$226
	.byte	0x1
	.byte	0xe
	.long	0xb06
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x18
	.set L$set$227,LASF1-Lsection__debug_str
	.long L$set$227
	.byte	0x1
	.byte	0xe
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x18
	.set L$set$228,LASF10-Lsection__debug_str
	.long L$set$228
	.byte	0x1
	.byte	0xe
	.long	0x9f9
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x0
	.byte	0x6
	.long	0x153
	.long	0xe64
	.byte	0x1e
	.byte	0x0
	.byte	0x1f
	.ascii "__CFConstantStringClassReference\0"
	.long	0xe59
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x20
	.ascii "_DefaultRuneLocale\0"
	.byte	0x3
	.byte	0x84
	.long	0x525
	.byte	0x1
	.byte	0x1
	.byte	0x20
	.ascii "_objc_empty_cache\0"
	.byte	0x1
	.byte	0x3f
	.long	0x219
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	0x598
	.long	0xeda
	.byte	0xd
	.long	0x598
	.byte	0xd
	.long	0x5c4
	.byte	0x21
	.byte	0x0
	.byte	0x20
	.ascii "_objc_empty_vtable\0"
	.byte	0x1
	.byte	0x3f
	.long	0xef6
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	0xec4
	.byte	0x11
	.ascii "_class_t\0"
	.byte	0x14
	.byte	0xe
	.byte	0x0
	.long	0x1088
	.byte	0xa
	.ascii "isa\0"
	.byte	0xe
	.byte	0x0
	.long	0x1088
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "superclass\0"
	.byte	0xe
	.byte	0x0
	.long	0x1088
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "cache\0"
	.byte	0xe
	.byte	0x0
	.long	0x219
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "vtable\0"
	.byte	0xe
	.byte	0x0
	.long	0x108e
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x11
	.ascii "_class_ro_t\0"
	.byte	0x28
	.byte	0xe
	.byte	0x0
	.long	0x107a
	.byte	0xa
	.ascii "flags\0"
	.byte	0xe
	.byte	0x0
	.long	0x153
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "instanceStart\0"
	.byte	0xe
	.byte	0x0
	.long	0x153
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "instanceSize\0"
	.byte	0xe
	.byte	0x0
	.long	0x153
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "ivarLayout\0"
	.byte	0xe
	.byte	0x0
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii "name\0"
	.byte	0xe
	.byte	0x0
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xf
	.ascii "_objc_method_list\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseMethods\0"
	.byte	0xe
	.byte	0x0
	.long	0x1094
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xf
	.ascii "_protocol_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseProtocols\0"
	.byte	0xe
	.byte	0x0
	.long	0x109a
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0xf
	.ascii "_ivar_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "ivars\0"
	.byte	0xe
	.byte	0x0
	.long	0x10a0
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0xa
	.ascii "weakIvarLayout\0"
	.byte	0xe
	.byte	0x0
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0xf
	.ascii "_prop_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "properties\0"
	.byte	0xe
	.byte	0x0
	.long	0x10a6
	.byte	0x2
	.byte	0x23
	.byte	0x24
	.byte	0x0
	.byte	0xa
	.ascii "ro\0"
	.byte	0xe
	.byte	0x0
	.long	0x10ac
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0xefc
	.byte	0x8
	.byte	0x4
	.long	0xef6
	.byte	0x8
	.byte	0x4
	.long	0xfc8
	.byte	0x8
	.byte	0x4
	.long	0xff2
	.byte	0x8
	.byte	0x4
	.long	0x101d
	.byte	0x8
	.byte	0x4
	.long	0x1055
	.byte	0x8
	.byte	0x4
	.long	0xf51
	.byte	0x20
	.ascii "OBJC_CLASS_$_NSDateFormatter\0"
	.byte	0x1
	.byte	0x3f
	.long	0xefc
	.byte	0x1
	.byte	0x1
	.byte	0x20
	.ascii "OBJC_CLASS_$_NSString\0"
	.byte	0x1
	.byte	0x3f
	.long	0xefc
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section __DWARF,__debug_abbrev,regular,debug
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0xe5,0x7f
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xf
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xe6,0x7f
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x14
	.byte	0x1c
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x15
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x16
	.byte	0x28
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xd
	.byte	0x0
	.byte	0x0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x18
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x19
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1a
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1b
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1c
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x1d
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1e
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1f
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x34
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x21
	.byte	0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubtypes,regular,debug
	.long	0x191
	.word	0x2
	.set L$set$229,Ldebug_info0-Lsection__debug_info
	.long L$set$229
	.long	0x10f8
	.long	0x15a
	.ascii "__uint32_t\0"
	.long	0x1be
	.ascii "__darwin_size_t\0"
	.long	0x1ea
	.ascii "__darwin_wchar_t\0"
	.long	0x202
	.ascii "__darwin_rune_t\0"
	.long	0x282
	.ascii "_RuneEntry\0"
	.long	0x2ca
	.ascii "_RuneRange\0"
	.long	0x317
	.ascii "_RuneCharClass\0"
	.long	0x525
	.ascii "_RuneLocale\0"
	.long	0x54b
	.ascii "CFDateFormatterRef\0"
	.long	0x57f
	.ascii "Class\0"
	.long	0x5a1
	.ascii "objc_object\0"
	.long	0x598
	.ascii "id\0"
	.long	0x5da
	.ascii "BOOL\0"
	.long	0x5e6
	.ascii "NSUInteger\0"
	.long	0x5f8
	.ascii "NSObject\0"
	.long	0x61a
	.ascii "NSArray\0"
	.long	0x635
	.ascii "NSDate\0"
	.long	0x90d
	.ascii "NSString\0"
	.long	0x929
	.ascii "NSFormatter\0"
	.long	0x948
	.ascii "NSDateFormatter\0"
	.long	0x9d9
	.ascii "NSDictionary\0"
	.long	0x9ac
	.ascii "NSMutableDictionary\0"
	.long	0xa05
	.ascii "Person\0"
	.long	0xb0c
	.ascii "_objc_super\0"
	.long	0xefc
	.ascii "_class_t\0"
	.long	0x0
	.section __DWARF,__debug_aranges,regular,debug
	.long	0x1c
	.word	0x2
	.set L$set$230,Ldebug_info0-Lsection__debug_info
	.long L$set$230
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	Ltext0
	.set L$set$231,Letext0-Ltext0
	.long L$set$231
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_str,regular,debug
LASF13:
	.ascii "-[Person birthDate]\0"
LASF2:
	.ascii "-[Person initWithName:birthDate:weight:isMarried:]\0"
LASF1:
	.ascii "_cmd\0"
LASF6:
	.ascii "-[Person saveToFile:]\0"
LASF9:
	.ascii "-[Person setMarried:]\0"
LASF12:
	.ascii "-[Person setWeight:]\0"
LASF5:
	.ascii "concatenatedPerson\0"
LASF14:
	.ascii "-[Person setBirthDate:]\0"
LASF16:
	.ascii "-[Person setName:]\0"
LASF8:
	.ascii "-[Person married]\0"
LASF0:
	.ascii "self\0"
LASF15:
	.ascii "-[Person name]\0"
LASF3:
	.ascii "-[Person dateFormatter]\0"
LASF7:
	.ascii "-[Person restoreFromFile:]\0"
LASF10:
	.ascii "_value\0"
LASF4:
	.ascii "aFilePath\0"
LASF11:
	.ascii "-[Person weight]\0"
	.data
	.align 2
L_OBJC_IVAR_$_Person.weight$non_lazy_ptr:
	.long	_OBJC_IVAR_$_Person.weight
	.align 2
L_OBJC_IVAR_$_Person.name$non_lazy_ptr:
	.long	_OBJC_IVAR_$_Person.name
	.align 2
L_OBJC_IVAR_$_Person.birthDate$non_lazy_ptr:
	.long	_OBJC_IVAR_$_Person.birthDate
	.align 2
L_OBJC_IVAR_$_Person.married$non_lazy_ptr:
	.long	_OBJC_IVAR_$_Person.married
	.subsections_via_symbols
