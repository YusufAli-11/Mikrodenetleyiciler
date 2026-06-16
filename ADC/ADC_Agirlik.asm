
_OrtalamaHesapla:

;ADC_Agirlik.c,4 :: 		int OrtalamaHesapla(float sayi1,float sayi2,float sayi3, float sayi4){
;ADC_Agirlik.c,7 :: 		toplam = sayi1+sayi2+sayi3+sayi4;
	MOVF       FARG_OrtalamaHesapla_sayi1+0, 0
	MOVWF      R0+0
	MOVF       FARG_OrtalamaHesapla_sayi1+1, 0
	MOVWF      R0+1
	MOVF       FARG_OrtalamaHesapla_sayi1+2, 0
	MOVWF      R0+2
	MOVF       FARG_OrtalamaHesapla_sayi1+3, 0
	MOVWF      R0+3
	MOVF       FARG_OrtalamaHesapla_sayi2+0, 0
	MOVWF      R4+0
	MOVF       FARG_OrtalamaHesapla_sayi2+1, 0
	MOVWF      R4+1
	MOVF       FARG_OrtalamaHesapla_sayi2+2, 0
	MOVWF      R4+2
	MOVF       FARG_OrtalamaHesapla_sayi2+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       FARG_OrtalamaHesapla_sayi3+0, 0
	MOVWF      R4+0
	MOVF       FARG_OrtalamaHesapla_sayi3+1, 0
	MOVWF      R4+1
	MOVF       FARG_OrtalamaHesapla_sayi3+2, 0
	MOVWF      R4+2
	MOVF       FARG_OrtalamaHesapla_sayi3+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       FARG_OrtalamaHesapla_sayi4+0, 0
	MOVWF      R4+0
	MOVF       FARG_OrtalamaHesapla_sayi4+1, 0
	MOVWF      R4+1
	MOVF       FARG_OrtalamaHesapla_sayi4+2, 0
	MOVWF      R4+2
	MOVF       FARG_OrtalamaHesapla_sayi4+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
;ADC_Agirlik.c,9 :: 		toplam /= 4;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
;ADC_Agirlik.c,10 :: 		toplam = (int)(toplam);
	CALL       _double2int+0
	CALL       _int2double+0
;ADC_Agirlik.c,12 :: 		return toplam;
	CALL       _double2int+0
;ADC_Agirlik.c,13 :: 		}
L_end_OrtalamaHesapla:
	RETURN
; end of _OrtalamaHesapla

_HesaplaDonustur:

;ADC_Agirlik.c,15 :: 		float HesaplaDonustur(float sayi){
;ADC_Agirlik.c,17 :: 		sayi = sayi * (5000.0/1024.0);
	MOVF       FARG_HesaplaDonustur_sayi+0, 0
	MOVWF      R0+0
	MOVF       FARG_HesaplaDonustur_sayi+1, 0
	MOVWF      R0+1
	MOVF       FARG_HesaplaDonustur_sayi+2, 0
	MOVWF      R0+2
	MOVF       FARG_HesaplaDonustur_sayi+3, 0
	MOVWF      R0+3
	MOVLW      0
	MOVWF      R4+0
	MOVLW      64
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_HesaplaDonustur_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_HesaplaDonustur_sayi+1
	MOVF       R0+2, 0
	MOVWF      FARG_HesaplaDonustur_sayi+2
	MOVF       R0+3, 0
	MOVWF      FARG_HesaplaDonustur_sayi+3
;ADC_Agirlik.c,18 :: 		return sayi;
;ADC_Agirlik.c,19 :: 		}
L_end_HesaplaDonustur:
	RETURN
; end of _HesaplaDonustur

_main:

;ADC_Agirlik.c,21 :: 		void main() {
;ADC_Agirlik.c,23 :: 		ADCON1 = 0X80;
	MOVLW      128
	MOVWF      ADCON1+0
;ADC_Agirlik.c,24 :: 		TRISA = 0x0F;
	MOVLW      15
	MOVWF      TRISA+0
;ADC_Agirlik.c,25 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;ADC_Agirlik.c,26 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADC_Agirlik.c,28 :: 		while(1){
L_main0:
;ADC_Agirlik.c,29 :: 		bit_0 = ADC_Read(0); bit_0 = HesaplaDonustur(bit_0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _bit_0+0
	MOVF       R0+1, 0
	MOVWF      _bit_0+1
	MOVF       R0+2, 0
	MOVWF      _bit_0+2
	MOVF       R0+3, 0
	MOVWF      _bit_0+3
	MOVF       R0+0, 0
	MOVWF      FARG_HesaplaDonustur_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_HesaplaDonustur_sayi+1
	MOVF       R0+2, 0
	MOVWF      FARG_HesaplaDonustur_sayi+2
	MOVF       R0+3, 0
	MOVWF      FARG_HesaplaDonustur_sayi+3
	CALL       _HesaplaDonustur+0
	MOVF       R0+0, 0
	MOVWF      _bit_0+0
	MOVF       R0+1, 0
	MOVWF      _bit_0+1
	MOVF       R0+2, 0
	MOVWF      _bit_0+2
	MOVF       R0+3, 0
	MOVWF      _bit_0+3
;ADC_Agirlik.c,30 :: 		bit_1 = ADC_Read(1); bit_1 = HesaplaDonustur(bit_1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _bit_1+0
	MOVF       R0+1, 0
	MOVWF      _bit_1+1
	MOVF       R0+2, 0
	MOVWF      _bit_1+2
	MOVF       R0+3, 0
	MOVWF      _bit_1+3
	MOVF       R0+0, 0
	MOVWF      FARG_HesaplaDonustur_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_HesaplaDonustur_sayi+1
	MOVF       R0+2, 0
	MOVWF      FARG_HesaplaDonustur_sayi+2
	MOVF       R0+3, 0
	MOVWF      FARG_HesaplaDonustur_sayi+3
	CALL       _HesaplaDonustur+0
	MOVF       R0+0, 0
	MOVWF      _bit_1+0
	MOVF       R0+1, 0
	MOVWF      _bit_1+1
	MOVF       R0+2, 0
	MOVWF      _bit_1+2
	MOVF       R0+3, 0
	MOVWF      _bit_1+3
;ADC_Agirlik.c,31 :: 		bit_2 = ADC_Read(2); bit_2 = HesaplaDonustur(bit_2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _bit_2+0
	MOVF       R0+1, 0
	MOVWF      _bit_2+1
	MOVF       R0+2, 0
	MOVWF      _bit_2+2
	MOVF       R0+3, 0
	MOVWF      _bit_2+3
	MOVF       R0+0, 0
	MOVWF      FARG_HesaplaDonustur_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_HesaplaDonustur_sayi+1
	MOVF       R0+2, 0
	MOVWF      FARG_HesaplaDonustur_sayi+2
	MOVF       R0+3, 0
	MOVWF      FARG_HesaplaDonustur_sayi+3
	CALL       _HesaplaDonustur+0
	MOVF       R0+0, 0
	MOVWF      _bit_2+0
	MOVF       R0+1, 0
	MOVWF      _bit_2+1
	MOVF       R0+2, 0
	MOVWF      _bit_2+2
	MOVF       R0+3, 0
	MOVWF      _bit_2+3
;ADC_Agirlik.c,32 :: 		bit_3 = ADC_Read(3); bit_3 = HesaplaDonustur(bit_3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _bit_3+0
	MOVF       R0+1, 0
	MOVWF      _bit_3+1
	MOVF       R0+2, 0
	MOVWF      _bit_3+2
	MOVF       R0+3, 0
	MOVWF      _bit_3+3
	MOVF       R0+0, 0
	MOVWF      FARG_HesaplaDonustur_sayi+0
	MOVF       R0+1, 0
	MOVWF      FARG_HesaplaDonustur_sayi+1
	MOVF       R0+2, 0
	MOVWF      FARG_HesaplaDonustur_sayi+2
	MOVF       R0+3, 0
	MOVWF      FARG_HesaplaDonustur_sayi+3
	CALL       _HesaplaDonustur+0
	MOVF       R0+0, 0
	MOVWF      _bit_3+0
	MOVF       R0+1, 0
	MOVWF      _bit_3+1
	MOVF       R0+2, 0
	MOVWF      _bit_3+2
	MOVF       R0+3, 0
	MOVWF      _bit_3+3
;ADC_Agirlik.c,34 :: 		ortalama = OrtalamaHesapla(bit_0,bit_1,bit_2,bit_3);
	MOVF       _bit_0+0, 0
	MOVWF      FARG_OrtalamaHesapla_sayi1+0
	MOVF       _bit_0+1, 0
	MOVWF      FARG_OrtalamaHesapla_sayi1+1
	MOVF       _bit_0+2, 0
	MOVWF      FARG_OrtalamaHesapla_sayi1+2
	MOVF       _bit_0+3, 0
	MOVWF      FARG_OrtalamaHesapla_sayi1+3
	MOVF       _bit_1+0, 0
	MOVWF      FARG_OrtalamaHesapla_sayi2+0
	MOVF       _bit_1+1, 0
	MOVWF      FARG_OrtalamaHesapla_sayi2+1
	MOVF       _bit_1+2, 0
	MOVWF      FARG_OrtalamaHesapla_sayi2+2
	MOVF       _bit_1+3, 0
	MOVWF      FARG_OrtalamaHesapla_sayi2+3
	MOVF       _bit_2+0, 0
	MOVWF      FARG_OrtalamaHesapla_sayi3+0
	MOVF       _bit_2+1, 0
	MOVWF      FARG_OrtalamaHesapla_sayi3+1
	MOVF       _bit_2+2, 0
	MOVWF      FARG_OrtalamaHesapla_sayi3+2
	MOVF       _bit_2+3, 0
	MOVWF      FARG_OrtalamaHesapla_sayi3+3
	MOVF       R0+0, 0
	MOVWF      FARG_OrtalamaHesapla_sayi4+0
	MOVF       R0+1, 0
	MOVWF      FARG_OrtalamaHesapla_sayi4+1
	MOVF       R0+2, 0
	MOVWF      FARG_OrtalamaHesapla_sayi4+2
	MOVF       R0+3, 0
	MOVWF      FARG_OrtalamaHesapla_sayi4+3
	CALL       _OrtalamaHesapla+0
	MOVF       R0+0, 0
	MOVWF      _ortalama+0
	MOVF       R0+1, 0
	MOVWF      _ortalama+1
;ADC_Agirlik.c,36 :: 		PORTB = ortalama;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;ADC_Agirlik.c,37 :: 		}
	GOTO       L_main0
;ADC_Agirlik.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
