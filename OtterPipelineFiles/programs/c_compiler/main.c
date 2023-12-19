volatile int *LED_ADDR = (int*) 0x1100C000;
int toggle(int x);

int main(void) {
    int led = 1;
    while (1) {
        led = toggle(led);
        *LED_ADDR = led;
        for (int i = 0; i < 100; i++) {
            asm("nop");
        }
    }
    return 0;
}

int toggle(int x) {
    return x ^ 1;
}