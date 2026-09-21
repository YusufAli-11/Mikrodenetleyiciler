
_main:

;Step_Motor.c,1 :: 		void main() {
;Step_Motor.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Step_Motor.c,4 :: 		while(1) {
L_main0:
;Step_Motor.c,5 :: 		PORTB = 0x05; // A C = 0101
	MOVLW      5
	MOVWF      PORTB+0
;Step_Motor.c,6 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Step_Motor.c,8 :: 		PORTB = 0x06; // B C = 0110
	MOVLW      6
	MOVWF      PORTB+0
;Step_Motor.c,9 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Step_Motor.c,11 :: 		PORTB = 0x0A; // B D = 1010
	MOVLW      10
	MOVWF      PORTB+0
;Step_Motor.c,12 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Step_Motor.c,14 :: 		PORTB = 0x09; // A D = 1001
	MOVLW      9
	MOVWF      PORTB+0
;Step_Motor.c,15 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Step_Motor.c,16 :: 		}
	GOTO       L_main0
;Step_Motor.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
