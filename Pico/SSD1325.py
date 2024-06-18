import time, rp2
from rp2 import PIO;
from machine import Pin;

OLED_WIDTH = 128;
OLED_HEIGHT = 64;

# ================================ PIO & IO START ================================
@rp2.asm_pio(out_init = (PIO.OUT_HIGH, ) * 8, sideset_init = (PIO.OUT_HIGH, ) * 3)
def __bus_dat__():  #   WR CS DC
    pull()          .side(0b101);
    out(pins, 8)    .side(0b001);
    nop()           .side(0b101);
    out(pins, 8)    .side(0b001);
    nop()           .side(0b101);
    out(pins, 8)    .side(0b001);
    nop()           .side(0b101);
    out(pins, 8)    .side(0b001);
    nop()           .side(0b101);
    nop()           .side(0b111);

smd = rp2.StateMachine(0, __bus_dat__, freq = 20_000_000, sideset_base = Pin(8), out_base = Pin(0));

@rp2.asm_pio(out_init = (PIO.OUT_HIGH, ) * 8, sideset_init = (PIO.OUT_HIGH, ) * 3)
def __bus_cmd__():  #   WR CS DC
    pull()          .side(0b100);
    out(pins, 8)    .side(0b000);
    nop()           .side(0b100);
    nop()           .side(0b111);

smc = rp2.StateMachine(1, __bus_cmd__, freq = 20_000_000, sideset_base = Pin(8), out_base = Pin(0));

RD = Pin(11, Pin.OUT, value = 1);
RST = Pin(13, Pin.OUT, value = 1);
# ================================ PIO & IO END ================================

# ================================ FONT START ================================
FONT_MAX_WIDTH = 16;
file = open("font/font6.bin", mode = "rb");
FONT_6 = file.read();
file.close();
file = open("font/font8.bin", mode = "rb");
FONT_8 = file.read();
file.close();

def __font__(fid):
    fmap = {
        0: ( FONT_6, 6, 8 ),
        1: ( FONT_8, 8, 8 )
    };
    return fmap[fid % len(fmap)];

UTF_W = 16; UTF_H = 16;
UTF_SIZE = int(UTF_W * UTF_H / 8);
UTF = open("font/utf.bin", mode = "rb");
def __utf_read__(offset):
    UTF.seek(offset);
    return UTF.read(UTF_SIZE);
# ================================ FONT END ================================

OLED_BUF = [ 0x00 ] * int(FONT_MAX_WIDTH * 8 / 2);

def dat(value):
    if (smc.active()):
        smc.active(0);
    if (not smd.active()):
        smd.active(1);
        
    smd.put(value);

def cmd(value):
    if (smd.active()):
        smd.active(0);
    if (not smc.active()):
        smc.active(1);
        
    smc.put(value, 24);

def addr(x, y, w, h):
    xs = int(x / 2);
    ys = int(y);
    xe = int(xs + (w - 1) / 2);
    ye = int(ys + h - 1);
    cmd(0x15); cmd(xs); cmd(xe);
    cmd(0x75); cmd(ys); cmd(ye);

def send(x, y, w, h, buffer):
    siz = int(w * h / 2);
    addr(x, y, w, h);
    if (siz <= len(buffer)):
        for i in range(0, int(siz / 4)):
            dat(buffer[i * 4] << 24 | buffer[i * 4 + 1] << 16 | buffer[i * 4 + 2] << 8 | buffer[i * 4 + 3]);

def copy(dx, dy, sx, sy, w, h):
    sx = int(sx / 2);
    ex = sx + int((w - 1) / 2);
    ey = sy + h - 1;
    dx = int(dx / 2);
    cmd(0x25);
    cmd(sx); cmd(sy); cmd(ex); cmd(ey);
    cmd(dx); cmd(dy);

def fill(x, y, w, h, color, acc = False):
    c = color & 0xF;
    c = c << 4 | c;
    if (acc):
        xs = int(x / 2);
        ys = y;
        xe = xs + int((w - 1) / 2);
        ye = ys + h - 1;
        cmd(0x24);
        cmd(xs); cmd(ys);
        cmd(xe); cmd(ye);
        cmd(c);
    else:
        addr(x, y, w, h);
        for i in range(0, int(w * h / 2 / 4)):
            dat(c << 24 | c << 16 | c << 8 | c);

def clear(color = 0x0):
    fill(0, 0, 128, 64, color, True);

def reset():
    RST.value(0);
    time.sleep_ms(10);
    RST.value(1);

def init():
    reset();

    cmd(0xAE);
    
    cmd(0xB3); cmd(0x91);
    cmd(0xA8); cmd(0x3F);
    
    cmd(0xA1); cmd(0x00);
    cmd(0xA0); cmd(0x52);
    cmd(0xA2); cmd(0x4C);
    
    cmd(0xAD); cmd(0x02);
    
    cmd(0x81); cmd(0x7F);
    cmd(0x86);
    
    cmd(0xB8);
    cmd(0x01); cmd(0x11); cmd(0x22); cmd(0x32);
    cmd(0x43); cmd(0x54); cmd(0x65); cmd(0x76);
    
    cmd(0xB2); cmd(0x46);
    cmd(0xB1); cmd(0x22);
    cmd(0xBC); cmd(0x10);
    cmd(0xB4); cmd(0x07); 
    cmd(0xB0); cmd(0x28);
    cmd(0xBE); cmd(0x02);
    cmd(0xBF); cmd(0x0E);
    cmd(0xA4);
    
    clear();
    
    cmd(0xAF);

def bmp(x, y, w, h, buffer, center = False):
    if (center):
        send(x - w / 2, y - h / 2, w, h, buffer);
    else:
        send(x, y, w, h, buffer);

OFF_REMAP = [4, 0];
def bin(x, y, w, h, color, buffer):
    if (x > OLED_WIDTH - w):
        x = 0;
        y += h;
    for seg in range(0, int(h / 8)):
        for col in range(0, int(w)):
            off = col % 2;
            f = w * seg + col;
            for row in range(0, 8):
                pos = int((w * row + col) / 2);
                OLED_BUF[pos] &= ~(0xF << OFF_REMAP[off]);
                OLED_BUF[pos] |= (color & 0xF if buffer[f] & (1 << row) else color >> 4) << OFF_REMAP[off];
        bmp(x, y + seg * 8, w, 8, OLED_BUF);
    
def __c2b__(c):
    return ord(c) & 0xFF;

def char(x, y, fid, color, c):
    c = __c2b__(c);
    c -= __c2b__(' ');
    (f, f_w, f_h) = __font__(fid);
    bin(x, y, f_w, f_h, color, f[int(c * f_w * f_h / 8) : int((c + 1) * f_w * f_h / 8)]);

def __chk_utf__(c):
    val = ord(c);
    return 0 if (val <= 0xFF) else val;

def prt(x, y, fid, color, str):
    cnt = 0; siz = len(str);
    (f, f_w, f_h) = __font__(fid);

    while cnt < siz:
        if (y > OLED_HEIGHT - f_h):
            x = 0;
            y = 0;
            clear(color >> 4);

        code = __chk_utf__(str[cnt]);
        if (code == 0):
            if (str[cnt] == '\n'):
                cnt += 1;
                x = 0;
                y += f_h;
                continue;
            elif (str[cnt] == '\x08'):
                cnt += 1;
                if (x >= f_w):
                    x -= f_w;
                else:
                    x = OLED_WIDTH - f_w;
                    y -= f_h;
                char(x, y, fid, color, ' ');
                continue;
            else:
                char(x, y, fid, color, str[cnt]);
                x += f_w;
                if (x >= OLED_WIDTH - f_w):
                    x = 0;
                    y += f_h;
                cnt += 1;
        else:
            buf = __utf_read__(code * UTF_SIZE);
            if (len(buf) == UTF_SIZE):
                bin(x, y, UTF_W, UTF_H, color, buf);
            x += UTF_W;
            if (x >= OLED_WIDTH - UTF_W):
                x = 0;
                y += UTF_H;
            cnt += 1;

def prtc(x, y, fid, color, str):
    (f, f_w, f_h) = __font__(fid);
    end = len(str);
    prt(x - end * f_w / 2, y, fid, color, str);
