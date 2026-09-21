
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Interrupt.c,2 :: 		void interrupt(){
;Interrupt.c,4 :: 		INTCON.INTE = 0;
	BCF        INTCON+0, 4
;Interrupt.c,5 :: 		INTCON.GIE = 0;
	BCF        INTCON+0, 7
;Interrupt.c,7 :: 		PORTD += 1;
	INCF       PORTD+0, 1
;Interrupt.c,8 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_interrupt0:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt0
	DECFSZ     R12+0, 1
	GOTO       L_interrupt0
	DECFSZ     R11+0, 1
	GOTO       L_interrupt0
	NOP
	NOP
;Interrupt.c,10 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;Interrupt.c,11 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;Interrupt.c,12 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Interrupt.c,14 :: 		}
L_end_interrupt:
L__interrupt5:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Interrupt.c,18 :: 		void main() {
;Interrupt.c,19 :: 		TRISB = 0X01;
	MOVLW      1
	MOVWF      TRISB+0
;Interrupt.c,20 :: 		TRISC = 0;
	CLRF       TRISC+0
;Interrupt.c,21 :: 		TRISD = 0;
	CLRF       TRISD+0
;Interrupt.c,22 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;Interrupt.c,24 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;Interrupt.c,25 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Interrupt.c,28 :: 		while(1){
L_main1:
;Interrupt.c,30 :: 		PORTC = counter % 4;
	MOVLW      4
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
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;Interrupt.c,31 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Interrupt.c,32 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;Interrupt.c,33 :: 		}
	GOTO       L_main1
;Interrupt.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
