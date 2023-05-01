#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

#define A RB3
#define B RB4
#define C RB5
#define D RB6
#define A1 RB0
#define B1 RB1
#define C1 RB2


int a,b,c,d,e,f,i;
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
TRISB=0X07; PORTB=0X00;

command(0X02); // 4 bit mode itself
command(0X0C);
command(0X28); // 5*7 display in 4 bit mode


while(1)
{
for(i=0;i<1000;i++)
{
a=i/1000;

b=i%1000;
c=b/100;

d=b%100;
e=d/10;

f=d%10;

command(0X80);
data(a+48);
data(c+48);
data(e+48);
data(f+48);
}

}
}
