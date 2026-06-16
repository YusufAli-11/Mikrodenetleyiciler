
_main:

;Butonlu_Led_Yakma.c,2 :: 		void main() {
;Butonlu_Led_Yakma.c,4 :: 		ADCON1 = 0x06;
	MOVLW      6
	MOVWF      ADCON1+0
;Butonlu_Led_Yakma.c,5 :: 		TRISA = 0XFF;
	MOVLW      255
	MOVWF      TRISA+0
;Butonlu_Led_Yakma.c,6 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;Butonlu_Led_Yakma.c,8 :: 		while(1){
L_main0:
;Butonlu_Led_Yakma.c,10 :: 		PORTB = ~PORTA;
	COMF       PORTA+0, 0
	MOVWF      PORTB+0
;Butonlu_Led_Yakma.c,11 :: 		}
	GOTO       L_main0
;Butonlu_Led_Yakma.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
