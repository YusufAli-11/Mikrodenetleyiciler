float bit_0,bit_1,bit_2,bit_3;
int ortalama;

int OrtalamaHesapla(float sayi1,float sayi2,float sayi3, float sayi4){

float toplam;
toplam = sayi1+sayi2+sayi3+sayi4;

toplam /= 4;
toplam = (int)(toplam);

return toplam;
}

float HesaplaDonustur(float sayi){

sayi = sayi * (5000.0/1024.0);
return sayi;
}

void main() {

ADCON1 = 0X80;
TRISA = 0x0F;
TRISB = 0X00;
ADC_Init();

while(1){
bit_0 = ADC_Read(0); bit_0 = HesaplaDonustur(bit_0);
bit_1 = ADC_Read(1); bit_1 = HesaplaDonustur(bit_1);
bit_2 = ADC_Read(2); bit_2 = HesaplaDonustur(bit_2);
bit_3 = ADC_Read(3); bit_3 = HesaplaDonustur(bit_3);

ortalama = OrtalamaHesapla(bit_0,bit_1,bit_2,bit_3);

PORTB = ortalama;
}


}