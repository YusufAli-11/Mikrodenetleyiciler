int counter = 0;

void interrupt(){
counter++;

INTCON.T0IE = 0;
INTCON.GIE = 0;

TMR0 = 131;

if (counter % 125 == 0){

PORTB.F0 = 1;
delay_ms(1000);
PORTB.F0 = 0;
}



INTCON.T0IF = 0;
INTCON.T0IE = 1;
INTCON.GIE = 1;

}



void main() {

TRISB = 0X00;
TMR0 = 131;

INTCON.T0IE = 1;
INTCON.GIE = 1;
OPTION_REG = 0X06;



}