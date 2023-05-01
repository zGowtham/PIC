#include<pic.h>
#define _XTAL_FREQ 4000000

#define RS RE0
#define EN RE1
#define LCD PORTA

int count=0;

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
LCD=data;
pulse();
}

void com(char data)
{
RS=0;
LCD=data;
pulse();
}

void data(char data)
{
RS=1;
LCD=data;
pulse();
}

void interrupt intr()
{
if(T0IF==1)
{
count++;
com(0x80);

int m,n,s,p;

m=count/1000;
n=(count%1000)/100;
s=(count%100)/10;
p=count%10;

data(m+48);
data(n+48);
data(s+48);
data(p+48);


if((count>125)&&(count<130))
{
RC1=1;
__delay_ms(100);
RC1=0;
__delay_ms(100);
}

if((count>250)&&(count<255))
{
RC1=1;
__delay_ms(100);
RC1=0;
__delay_ms(100);
}

T0IF=0;
TMR0=131;
}
}

void timer(int a, int b, int c)
{

if(count<=a)
{
RC5=1;
}

if((count>a)&&(count<b))
{
RC5=0;
RC6=1;
}

if((count>b)&&(count<c))
{
RC6=0;
RC7=1;
}
}

void main()
{

TRISE=0X00; PORTE=0X00;
TRISC=0X00; PORTC=0X00;
TRISD=0X00; PORTD=0X00;

ANSEL=0; ANSELH=0;

T0IE=1;
GIE=1;
INTE=1;

//PEIE=1; peripheral interrupt

OPTION=0X07;
TMR0=131;

com(0X38);
com(0X0C);

while(1)
{
timer(250,260,500);
}
}

