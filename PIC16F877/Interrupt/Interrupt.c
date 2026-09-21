
void interrupt(){

INTCON.INTE = 0;
INTCON.GIE = 0;

PORTD += 1;
delay_ms(500);

INTCON.INTE = 1;
INTCON.INTF = 0;
INTCON.GIE = 1;

}

int counter = 0;

void main() {
TRISB = 0X01;
TRISC = 0;
TRISD = 0;
PORTD = 0x00;

INTCON.INTE = 1;
INTCON.GIE = 1;


while(1){

PORTC = counter % 4;
delay_ms(500);
counter++;
}

}