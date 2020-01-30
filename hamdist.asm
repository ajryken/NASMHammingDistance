%include "/usr/local/share/csc314/asm_io.inc"


segment .data

	format1	db	"String 1: ",0
	format2	db	"String 2: ",0
	format3	db	"Hamming Distance = %d",10,0

	str1	db	"text",10,0
	str2	db	"test",10,0

segment .bss


segment .text
	global  asm_main
	extern	printf

asm_main:
	enter	0, 0
	pusha
	; ********** CODE STARTS HERE **********

	; CALL HAMDIST FUNCTION
	push	str2
	push	str1
	call	hamdist
	add		esp, 8

	; PRINT RESULT
	push	format1
	call 	printf
	add		esp, 4
	push	str1
	call	printf
	add		esp, 4

	push	format2
	call printf
	add		esp, 4
	push	str2
	call	printf
	add		esp, 4

	push	eax
	push	format3
	call	printf
	add		esp, 8

	; *********** CODE ENDS HERE ***********
	popa
	mov		eax, 0
	leave
	ret

hamdist:
	push	ebp
	mov		ebp, esp

	sub		esp, 8
	mov		DWORD [ebp - 4], 0			;distance counter
	mov		DWORD [ebp - 8], 0			;loop counter

	jmp		start_cmp
	start_for:
	mov		edx, DWORD [ebp - 8]
	mov		eax, DWORD [ebp + 8]
	add		eax, edx
	movzx	edx, BYTE [eax]
	mov		ecx, DWORD [ebp - 8]
	mov		eax, DWORD [ebp + 12]
	add		eax, ecx
	movzx	eax, BYTE [eax]
	cmp		dl, al
	je		no_ham
		inc		DWORD [ebp - 4]
		no_ham:
		inc		DWORD [ebp - 8]
	start_cmp:
	mov		edx, DWORD [ebp - 8]
	mov		eax, DWORD [ebp + 8]
	add		eax, edx
	movzx	eax, BYTE [eax]
	test	al, al
	jne		start_for

	mov		eax, DWORD [ebp - 4]

	mov		esp, ebp
	pop		ebp
	ret
