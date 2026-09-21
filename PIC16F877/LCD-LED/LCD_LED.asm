
_main:

;LCD_LED.c,18 :: 		void main() {
;LCD_LED.c,19 :: 		TRISC = 0XFF;
	MOVLW      255
	MOVWF      TRISC+0
;LCD_LED.c,20 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;LCD_LED.c,22 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;LCD_LED.c,23 :: 		LCD_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD_LED.c,24 :: 		LCD_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD_LED.c,26 :: 		while(1){
L_main0:
;LCD_LED.c,27 :: 		input = PORTC;
	MOVF       PORTC+0, 0
	MOVWF      _input+0
	CLRF       _input+1
;LCD_LED.c,28 :: 		input *= 2;
	MOVF       _input+0, 0
	MOVWF      R0+0
	MOVF       _input+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      _input+0
	MOVF       R0+1, 0
	MOVWF      _input+1
;LCD_LED.c,30 :: 		IntToStr(input,txt);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;LCD_LED.c,32 :: 		LCD_out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD_LED.c,33 :: 		}
	GOTO       L_main0
;LCD_LED.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
