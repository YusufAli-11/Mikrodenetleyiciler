
_Number_To_Hex:

;Seven_Segment_Display.c,1 :: 		int Number_To_Hex(int sayi){
;Seven_Segment_Display.c,3 :: 		switch(sayi){
	GOTO       L_Number_To_Hex0
;Seven_Segment_Display.c,5 :: 		case 0: return 0X3F;
L_Number_To_Hex2:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,6 :: 		case 1: return 0X06;
L_Number_To_Hex3:
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,7 :: 		case 2: return 0X5B;
L_Number_To_Hex4:
	MOVLW      91
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,8 :: 		case 3: return 0X4F;
L_Number_To_Hex5:
	MOVLW      79
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,9 :: 		case 4: return 0X66;
L_Number_To_Hex6:
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,10 :: 		case 5: return 0X6D;
L_Number_To_Hex7:
	MOVLW      109
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,11 :: 		case 6: return 0X7D;
L_Number_To_Hex8:
	MOVLW      125
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,12 :: 		case 7: return 0X07;
L_Number_To_Hex9:
	MOVLW      7
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,13 :: 		case 8: return 0X7F;
L_Number_To_Hex10:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,14 :: 		case 9: return 0X6F;
L_Number_To_Hex11:
	MOVLW      111
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,15 :: 		default: return 0x00;
L_Number_To_Hex12:
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_Number_To_Hex
;Seven_Segment_Display.c,17 :: 		}
L_Number_To_Hex0:
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex22
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex22:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex2
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex23
	MOVLW      1
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex23:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex3
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex24
	MOVLW      2
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex24:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex4
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex25
	MOVLW      3
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex25:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex5
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex26
	MOVLW      4
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex26:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex6
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex27
	MOVLW      5
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex27:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex7
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex28
	MOVLW      6
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex28:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex8
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex29
	MOVLW      7
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex29:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex9
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex30
	MOVLW      8
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex30:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex10
	MOVLW      0
	XORWF      FARG_Number_To_Hex_sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Number_To_Hex31
	MOVLW      9
	XORWF      FARG_Number_To_Hex_sayi+0, 0
L__Number_To_Hex31:
	BTFSC      STATUS+0, 2
	GOTO       L_Number_To_Hex11
	GOTO       L_Number_To_Hex12
;Seven_Segment_Display.c,19 :: 		}
L_end_Number_To_Hex:
	RETURN
; end of _Number_To_Hex

_main:

;Seven_Segment_Display.c,23 :: 		void main() {
;Seven_Segment_Display.c,25 :: 		ADCON1 = 0X06;
	MOVLW      6
	MOVWF      ADCON1+0
;Seven_Segment_Display.c,26 :: 		TRISA = 0XFF;
	MOVLW      255
	MOVWF      TRISA+0
;Seven_Segment_Display.c,27 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;Seven_Segment_Display.c,28 :: 		TRISD = 0X00;
	CLRF       TRISD+0
;Seven_Segment_Display.c,30 :: 		while(1){
L_main13:
;Seven_Segment_Display.c,32 :: 		if(PORTA.F1 == 1){
	BTFSS      PORTA+0, 1
	GOTO       L_main15
;Seven_Segment_Display.c,33 :: 		PORTB = 0X79;
	MOVLW      121
	MOVWF      PORTB+0
;Seven_Segment_Display.c,34 :: 		PORTD = 0X77;
	MOVLW      119
	MOVWF      PORTD+0
;Seven_Segment_Display.c,35 :: 		}
	GOTO       L_main16
L_main15:
;Seven_Segment_Display.c,38 :: 		if(PORTA.F0 == 0){
	BTFSC      PORTA+0, 0
	GOTO       L_main17
;Seven_Segment_Display.c,40 :: 		PORTB = 0X00;PORTD = 0X00;
	CLRF       PORTB+0
	CLRF       PORTD+0
;Seven_Segment_Display.c,41 :: 		}
	GOTO       L_main18
L_main17:
;Seven_Segment_Display.c,44 :: 		if(counter == 100) counter = 0;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      100
	XORWF      _counter+0, 0
L__main33:
	BTFSS      STATUS+0, 2
	GOTO       L_main19
	CLRF       _counter+0
	CLRF       _counter+1
L_main19:
;Seven_Segment_Display.c,46 :: 		PORTB = Number_To_Hex(counter / 10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _counter+0, 0
	MOVWF      R0+0
	MOVF       _counter+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_Number_To_Hex_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_Number_To_Hex_sayi+1
	CALL       _Number_To_Hex+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Seven_Segment_Display.c,47 :: 		PORTD = Number_To_Hex(counter % 10);
	MOVLW      10
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
	MOVWF      FARG_Number_To_Hex_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_Number_To_Hex_sayi+1
	CALL       _Number_To_Hex+0
	MOVF       R0+0, 0
	MOVWF      PORTD+0
;Seven_Segment_Display.c,48 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	NOP
;Seven_Segment_Display.c,49 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;Seven_Segment_Display.c,50 :: 		}
L_main18:
;Seven_Segment_Display.c,52 :: 		}
L_main16:
;Seven_Segment_Display.c,54 :: 		}
	GOTO       L_main13
;Seven_Segment_Display.c,56 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
