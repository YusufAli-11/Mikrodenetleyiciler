
_main:

;ADC.c,20 :: 		void main() {
;ADC.c,22 :: 		ADCON1 = 0X80;
	MOVLW      128
	MOVWF      ADCON1+0
;ADC.c,23 :: 		TRISA = 0X01;
	MOVLW      1
	MOVWF      TRISA+0
;ADC.c,24 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;ADC.c,26 :: 		ADC_INIT();
	CALL       _ADC_Init+0
;ADC.c,27 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;ADC.c,29 :: 		LCD_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ADC.c,30 :: 		LCD_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ADC.c,32 :: 		while(1){
L_main0:
;ADC.c,33 :: 		tam_deger = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _tam_deger+0
	MOVF       R0+1, 0
	MOVWF      _tam_deger+1
	MOVF       R0+2, 0
	MOVWF      _tam_deger+2
	MOVF       R0+3, 0
	MOVWF      _tam_deger+3
;ADC.c,34 :: 		FloatToStr(tam_deger,txt);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _txt+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;ADC.c,35 :: 		LCD_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC.c,37 :: 		voltaj = (5.0 / 1024) * (tam_deger);
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      32
	MOVWF      R0+2
	MOVLW      119
	MOVWF      R0+3
	MOVF       _tam_deger+0, 0
	MOVWF      R4+0
	MOVF       _tam_deger+1, 0
	MOVWF      R4+1
	MOVF       _tam_deger+2, 0
	MOVWF      R4+2
	MOVF       _tam_deger+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _voltaj+0
	MOVF       R0+1, 0
	MOVWF      _voltaj+1
	MOVF       R0+2, 0
	MOVWF      _voltaj+2
	MOVF       R0+3, 0
	MOVWF      _voltaj+3
;ADC.c,38 :: 		FloatToStr(voltaj,txt2);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _txt2+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;ADC.c,39 :: 		LCD_Out(2,1,txt2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC.c,40 :: 		}
	GOTO       L_main0
;ADC.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
