#include<pic.h>

#define B1 RA0
#define B2 RA1

static int count=0;
int a,b;

void time_delay(int x)
{
while(x--);
}
char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

void configure()
{
RB1=1;
RB0=0;
PORTC=number[a];
time_delay(1000);

RB0=1;
RB1=0;
PORTC=number[b];
time_delay(1000);
}

void main()
{
TRISA=0X03;
TRISC=0X00;
TRISB=0X00;

PORTA=0X00;
PORTC=0X00;
PORTB=0X00;

ANSEL=0;
ANSELH=0;

while(1)
{
configure();

if(B1==1)
{
count++;
while(B1==1)
{
configure();}
}

if(B2==1)
{
count--;
while(B2==1)
{configure();}
}

a=count/10;
b=count%10;
}

}