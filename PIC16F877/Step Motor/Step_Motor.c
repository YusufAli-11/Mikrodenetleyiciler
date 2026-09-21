void main() {
    TRISB = 0x00;

    while(1) {
        PORTB = 0x05; // A C = 0101
        Delay_ms(1000);

        PORTB = 0x06; // B C = 0110
        Delay_ms(1000);

        PORTB = 0x0A; // B D = 1010
        Delay_ms(1000);

        PORTB = 0x09; // A D = 1001
        Delay_ms(1000);
    }
}