#include<pic.h>

#define RS RB0
#define EN RB1

#define LCD PORTB
#define _XTAL_FREQ 4000000


void delay(int x)
{
while(x--);
}

void pulse()
{
EN=1;
delay(1000);
EN=0;
delay(1000);
}

void command(char data)
{
RS=0;
LCD=(data&0XF0);
pulse();
LCD=(data&0X0F)<<4;
pulse();
}

void data(char data)
{
RS=1;
LCD=(data&0XF0)|0x01; // while using the pins from the same PORT
// it is required to use (|0X01) so that we can offset the effect
// of the masking done by (data&0XF0). Otherwise, RS=1 will be lost
// because we have done the masking through (data&0XF0)
pulse();
LCD=((data&0X0F)<<4)|0x01;
pulse();
}

void string(char *ptr)
{
while(*ptr)
{
data(*ptr);
*ptr++;
}
}

void main()
{
int i;

TRISC=0X00; PORTC=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X00; PORTB=0X00;
TRISD=0X00; PORTD=0X00;

command(0X02); // 4 bit mode itself

command(0X0C); // display on cursor off
command(0X28); // 5*7 display in 4 bit mode

while(1)
{
command(0X80);
string("Gowtham");
command(0XC0);
string("GOWTHAM");
}

}




