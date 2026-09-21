
void main() {

ADCON1 = 0x06;
TRISA = 0XFF;
TRISB = 0X00;

while(1){

PORTB = ~PORTA;
}


}