from machine import Pin;
import SSD1325 as OLED;
import time, math;

KEY = Pin(24, Pin.IN);
LED = Pin(25, Pin.OUT);

LED.value(0);
OLED.init();
OLED.clear();
OLED.prtc(64, 28, 1, 0x08, "BOOTING");
time.sleep(3);
machine.freq(240_000_000); # 保证超频不会超出问题
LED.value(1);
time.sleep_ms(500);

# 加载视频
VID_W = 100; VID_H = 60;
VID_F = 1322;
VID_S = int(VID_W * VID_H / 2);
vid = open("goblin.bin", mode = "rb");

OLED.clear();
OLED.prt(4, 4, 0, 0x18, "Hello, Gensokyo!");
OLED.prt(4, 16, 1, 0x0F, "Hello, world!");
OLED.prt(4, 32, 0, 0x08, "（゜－゜）つロ");

run = False;
def toggle():
    global run;
    run = not run;
    OLED.clear();

KEY.irq(lambda pin: toggle(), Pin.IRQ_FALLING);

i = 0;
while True:
    if (run):
        LED.toggle();
        vid.seek(i * VID_S);
        buf = vid.read(VID_S);
        OLED.bmp(64, 32, VID_W, VID_H, buf, True);
        
        i += 1;
        if (i >= VID_F):
            i = 0;
    time.sleep_ms(1);
    
    