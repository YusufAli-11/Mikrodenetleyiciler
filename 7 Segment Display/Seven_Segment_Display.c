int Number_To_Hex(int sayi){

switch(sayi){

  case 0: return 0X3F;
  case 1: return 0X06;
  case 2: return 0X5B;
  case 3: return 0X4F;
  case 4: return 0X66;
  case 5: return 0X6D;
  case 6: return 0X7D;
  case 7: return 0X07;
  case 8: return 0X7F;
  case 9: return 0X6F;
  default: return 0x00;

}

}

int counter = 0;

void main() {

ADCON1 = 0X06;
TRISA = 0XFF;
TRISB = 0X00;
TRISD = 0X00;

while(1){

if(PORTA.F1 == 1){
           PORTB = 0X79;
           PORTD = 0X77;
       }
else{

if(PORTA.F0 == 0){

PORTB = 0X00;PORTD = 0X00;
}
else {

if(counter == 100) counter = 0;

PORTB = Number_To_Hex(counter / 10);
PORTD = Number_To_Hex(counter % 10);
delay_ms(10);
counter++;
}

}

}

}