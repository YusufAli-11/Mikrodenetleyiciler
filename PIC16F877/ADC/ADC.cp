#line 1 "C:/Users/yusuf/OneDrive/Masaüstü/Mikrodenetleyiciler/LAB ANTRENMAN/ADC/ADC.c"
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;

sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;

float tam_deger;
float voltaj;
char txt[16];
char txt2[16];

void main() {

ADCON1 = 0X80;
TRISA = 0X01;
TRISB = 0X00;

ADC_INIT();
LCD_Init();

LCD_Cmd(_LCD_CLEAR);
LCD_Cmd(_LCD_CURSOR_OFF);

while(1){
tam_deger = ADC_Read(0);
FloatToStr(tam_deger,txt);
LCD_Out(1,1,txt);

voltaj = (5.0 / 1024) * (tam_deger);
FloatToStr(voltaj,txt2);
LCD_Out(2,1,txt2);
}

}
