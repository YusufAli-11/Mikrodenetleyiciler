int d_flag;
int b_flag;

void main() {

         TRISB = 0;
         TRISD = 0;
         d_flag = 1; // flag == 1 durumunda 2yle carpilarak ilerlenir.
         b_flag = 0; // flag == 0 durumunda 2ye bolunerek ilerlenir.
         
         PORTB = 0X80;
         PORTD = 0X01;

         while(1)
         {
         delay_ms(500);
         
         if(PORTB == 0X01){
         
         b_flag = 1;
         }
         if(PORTB == 0X80){

         b_flag = 0;
         }
         if(b_flag == 0) PORTB /= 2;
         else PORTB *= 2;
         
         if(PORTD == 0X01){

         d_flag = 1;
         }
         if(PORTD == 0X80){

         d_flag = 0;
         }
         if(d_flag == 0) PORTD /= 2;
         else PORTD *= 2;


         
         }


}