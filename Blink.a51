; Blink LED every one second 
ORG 0000

MAIN:	
	CPL P2.0; Toggle LED
	
	MOV R0,#0FFH
	MOV R1,#0FFH
	MOV R2,#08H
	
	;Delay 1 second using 3 nested loops
	;Delay time = 255 * 255 * 8 * 2 = 1,040,400 us 	
	DELAY:
	NEST:
	WAIT:	
		DJNZ R0,WAIT
		MOV R0,#0FFH
		DJNZ R1,NEST
		MOV R1,#0FFH
		DJNZ R2,DELAY
		 
	JMP MAIN
	
END