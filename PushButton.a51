; PushButton controls LED
; Every press Toggle the LED
ORG 0000
; pushButton is connected to P1.1
; LED is connected to P2.0
MAIN:	
	MOV P1,#0FFH ; set port1 as input 

LOOP:
	MOV A,P1 ; Read Port1 (button)
	ANL A,#02H ; Check wether the button is pressed or not
	JNZ LOOP

TOGGLE: ; Toggle the LED
	CPL P2.0

WAIT:	; Wait until the button is released
	MOV A,P1 ; Read Port1 (button)
	ANL A,#02H
	JNZ LOOP
	JMP WAIT 
	
END