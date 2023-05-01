#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

int DV, high, low;

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

void data(char data)
{
RS=1;
LCD=data;
pulse();
}

void count(int i)
{
int a,c,e,f;

a=i/1000;
c=(i%1000)/100;
e=(i%100)/10;
f=i%10;

command(0X80);
data(a+48);
data(c+48);
data(e+48);
data(f+48);
}

void adc()
{
ADCON0=0X83; ADCON1=0XB0;
while(ADCON0 & 0X02);
high=ADRESH; low=ADRESL;

if(high==0)
{
DV=low;
count(DV);
}

if(high==1)
{
DV=low+256;
count(DV);
}

if(high==2)
{
DV=low+512;
count(DV);
}

if(high==3)
{
DV=low+768;
count(DV);
}

}

void voltage()
{

command(0XC0);
int a,b,c,d;
float z;

z=(DV*5.0)/1023.0;

if(z>=2.5)
{

float m;
m=z;
m=m-2.5;

d=m*100;
a=d/100;
b=(d%100)/10;
c=d%10;

data(0X2B);
data(a+48);
data(0X2E); //.
data(b+48);
data(c+48);
data(0X20); // space
data(0X56); //'v'
}

if(z<2.5)
{
float n;
n=z;
n=2.5-n;

d=n*100;
a=d/100;
b=(d%100)/10;
c=d%10;

data(0X2D);
data(a+48);
data(0X2E); //.
data(b+48);
data(c+48);
data(0X20); // space
data(0X56); //'v'
}



}



void main()
{
TRISA=0X0D;	PORTA=0X00; // analog input
TRISD=0X00;	PORTD=0X00;
TRISC=0X00; PORTC=0X00;
TRISE=0X00; PORTE=0X00;

ANSEL=0X01; ANSELH=0X00; // because I am selecting AN0 = 1

command(0X38);
command(0X0C); 

command(0X80);
data('0');
data('0');

while(1)
{
adc();
voltage();
}

}












