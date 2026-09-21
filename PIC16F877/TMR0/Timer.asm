
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Timer.c,3 :: 		void interrupt(){
;Timer.c,4 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;Timer.c,6 :: 		INTCON.T0IE = 0;
	BCF        INTCON+0, 5
;Timer.c,7 :: 		INTCON.GIE = 0;
	BCF        INTCON+0, 7
;Timer.c,9 :: 		TMR0 = 131;
	MOVLW      131
	MOVWF      TMR0+0
;Timer.c,11 :: 		if (counter % 125 == 0){
	MOVLW      125
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _counter+0, 0
	MOVWF      R0+0
	MOVF       _counter+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt4
	MOVLW      0
	XORWF      R0+0, 0
L__interrupt4:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt0
;Timer.c,13 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;Timer.c,14 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt1:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt1
	DECFSZ     R12+0, 1
	GOTO       L_interrupt1
	DECFSZ     R11+0, 1
	GOTO       L_interrupt1
	NOP
	NOP
;Timer.c,15 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;Timer.c,16 :: 		}
L_interrupt0:
;Timer.c,20 :: 		INTCON.T0IF = 0;
	BCF        INTCON+0, 2
;Timer.c,21 :: 		INTCON.T0IE = 1;
	BSF        INTCON+0, 5
;Timer.c,22 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Timer.c,24 :: 		}
L_end_interrupt:
L__interrupt3:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Timer.c,28 :: 		void main() {
;Timer.c,30 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;Timer.c,31 :: 		TMR0 = 131;
	MOVLW      131
	MOVWF      TMR0+0
;Timer.c,33 :: 		INTCON.T0IE = 1;
	BSF        INTCON+0, 5
;Timer.c,34 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Timer.c,35 :: 		OPTION_REG = 0X06;
	MOVLW      6
	MOVWF      OPTION_REG+0
;Timer.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
