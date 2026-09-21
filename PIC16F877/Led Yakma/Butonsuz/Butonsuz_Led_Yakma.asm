
_main:

;Butonsuz_Led_Yakma.c,4 :: 		void main() {
;Butonsuz_Led_Yakma.c,6 :: 		TRISB = 0;
	CLRF       TRISB+0
;Butonsuz_Led_Yakma.c,7 :: 		TRISD = 0;
	CLRF       TRISD+0
;Butonsuz_Led_Yakma.c,8 :: 		d_flag = 1; // flag == 1 durumunda 2yle carpilarak ilerlenir.
	MOVLW      1
	MOVWF      _d_flag+0
	MOVLW      0
	MOVWF      _d_flag+1
;Butonsuz_Led_Yakma.c,9 :: 		b_flag = 0; // flag == 0 durumunda 2ye bolunerek ilerlenir.
	CLRF       _b_flag+0
	CLRF       _b_flag+1
;Butonsuz_Led_Yakma.c,11 :: 		PORTB = 0X80;
	MOVLW      128
	MOVWF      PORTB+0
;Butonsuz_Led_Yakma.c,12 :: 		PORTD = 0X01;
	MOVLW      1
	MOVWF      PORTD+0
;Butonsuz_Led_Yakma.c,14 :: 		while(1)
L_main0:
;Butonsuz_Led_Yakma.c,16 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Butonsuz_Led_Yakma.c,18 :: 		if(PORTB == 0X01){
	MOVF       PORTB+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Butonsuz_Led_Yakma.c,20 :: 		b_flag = 1;
	MOVLW      1
	MOVWF      _b_flag+0
	MOVLW      0
	MOVWF      _b_flag+1
;Butonsuz_Led_Yakma.c,21 :: 		}
L_main3:
;Butonsuz_Led_Yakma.c,22 :: 		if(PORTB == 0X80){
	MOVF       PORTB+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;Butonsuz_Led_Yakma.c,24 :: 		b_flag = 0;
	CLRF       _b_flag+0
	CLRF       _b_flag+1
;Butonsuz_Led_Yakma.c,25 :: 		}
L_main4:
;Butonsuz_Led_Yakma.c,26 :: 		if(b_flag == 0) PORTB /= 2;
	MOVLW      0
	XORWF      _b_flag+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      0
	XORWF      _b_flag+0, 0
L__main12:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
	GOTO       L_main6
L_main5:
;Butonsuz_Led_Yakma.c,27 :: 		else PORTB *= 2;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
L_main6:
;Butonsuz_Led_Yakma.c,29 :: 		if(PORTD == 0X01){
	MOVF       PORTD+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;Butonsuz_Led_Yakma.c,31 :: 		d_flag = 1;
	MOVLW      1
	MOVWF      _d_flag+0
	MOVLW      0
	MOVWF      _d_flag+1
;Butonsuz_Led_Yakma.c,32 :: 		}
L_main7:
;Butonsuz_Led_Yakma.c,33 :: 		if(PORTD == 0X80){
	MOVF       PORTD+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;Butonsuz_Led_Yakma.c,35 :: 		d_flag = 0;
	CLRF       _d_flag+0
	CLRF       _d_flag+1
;Butonsuz_Led_Yakma.c,36 :: 		}
L_main8:
;Butonsuz_Led_Yakma.c,37 :: 		if(d_flag == 0) PORTD /= 2;
	MOVLW      0
	XORWF      _d_flag+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      0
	XORWF      _d_flag+0, 0
L__main13:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVF       PORTD+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTD+0
	GOTO       L_main10
L_main9:
;Butonsuz_Led_Yakma.c,38 :: 		else PORTD *= 2;
	MOVF       PORTD+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTD+0
L_main10:
;Butonsuz_Led_Yakma.c,43 :: 		}
	GOTO       L_main0
;Butonsuz_Led_Yakma.c,46 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
