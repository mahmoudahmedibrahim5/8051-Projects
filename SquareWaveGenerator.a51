ORG 0000
;Square wave generator with duty cycle 50% and frequency 1kHz
MAIN:
	CPL P1.0
	ACALL DELAY
	SJMP MAIN

DELAY:
	MOV R1,#0FAH
	WAIT:
		DJNZ R1,WAIT
RET

END
