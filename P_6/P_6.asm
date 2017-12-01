.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	m  BYTE "The item number "
	it BYTE 11 DUP(?)
	   BYTE " is "
	va BYTE 11 DUP(?),0
	pr BYTE "Result :)",0
	p  BYTE  "enter number of items of Fibonacci ",0
	t  DWORD ?
	ni BYTE 11 DUP(?),0
	n  DWORD ?

.CODE
_MainProc PROC 
	input p ,ni ,11
	atod ni
	mov ecx,eax

	mov eax,1
	mov ebx,0
	mov edx,0
	mov n,0

	myloop:
		inc n
		dtoa it,n
		dtoa va,eax
		output pr,m

		mov ebx,eax
		add ebx,edx
		mov edx,eax
		mov eax,ebx
	loop myloop
	inc n
	dtoa it,n
	dtoa va,eax
	output pr,m

	mov eax,0 
	ret

_MainProc ENDP

END
