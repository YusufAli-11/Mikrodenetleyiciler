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

int input;
char txt[10];

void main() {
TRISC = 0XFF;
TRISB = 0X00;

LCD_Init();
LCD_Cmd(_LCD_CLEAR);
LCD_Cmd(_LCD_CURSOR_OFF);

while(1){
input = PORTC;
input *= 2;

IntToStr(input,txt);

LCD_out(1,1,txt);
}

}