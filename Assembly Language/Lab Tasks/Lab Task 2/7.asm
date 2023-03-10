org 00h
	mov r1,35h
	mov r2,60h
	mov r3,#10
	BACK: mov a,@r1
	mov @r2,a
	inc r1
	inc r2
	djnz r3,BACK