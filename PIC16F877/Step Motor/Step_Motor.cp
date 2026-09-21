#line 1 "C:/Users/yusuf/OneDrive/Masaüstü/Mikrodenetleyiciler/LAB ANTRENMAN/Step Motor/Step_Motor.c"
void main() {
 TRISB = 0x00;

 while(1) {
 PORTB = 0x05;
 Delay_ms(1000);

 PORTB = 0x06;
 Delay_ms(1000);

 PORTB = 0x0A;
 Delay_ms(1000);

 PORTB = 0x09;
 Delay_ms(1000);
 }
}
