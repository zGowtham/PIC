#include<pic.h>
__CONFIG(0X2CE4);

#define RS RE0
#define EN RE1

#define LCD PORTD
#define _XTAL_FREQ 4000000


int var=0;
static int count=0;
static int count1=0;
static int count2=0;


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
LCD=(data&0XF0);
pulse();
LCD=(data&0X0F)<<4;
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

TRISD=0X00; PORTD=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X00; PORTB=0X00;

command(0X02); // 4 bit mode itself
command(0X0C);
command(0X28); // 5*7 display in 4 bit mode

while(1)
{
command(0X80);
string("Gowtham");
command(0XC0);
string("GOWTHAM");
}

}


