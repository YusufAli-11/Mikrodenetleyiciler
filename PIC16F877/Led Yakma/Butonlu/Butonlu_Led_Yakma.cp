#line 1 "C:/Users/yusuf/OneDrive/Masaüstü/Mikrodenetleyiciler/LAB ANTRENMAN/Led Yakma/Butonlu/Butonlu_Led_Yakma.c"

void main() {

ADCON1 = 0x06;
TRISA = 0XFF;
TRISB = 0X00;

while(1){

PORTB = ~PORTA;
}


}
