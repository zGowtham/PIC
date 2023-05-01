#include <pic.h>

static int count=0;

int a=0,b=0,c=0;
int a1=0,b1=0,c1=0;

int count1=0;

void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISB=0X00; PORTB=0X00;
TRISA=0X00; PORTA=0X00;

OPTION=0X05;

while(1)
{

if(T0IF==1)
{
count++;
T0IF=0;
TMR0=131; //125=1sec
}


if(count==0)
{
RA2=1;
RB0=1;
RC0=1;
RD0=1;
}

if(count==375)
{
RA2=0;
RA1=1;
}

if(count==500)
{
RA1=0;
RA0=1;
RC2=1;
RC0=0;
}

if(count==875)
{
RC2=0;
RC1=1;
}

if(count==1000)
{
RC0=1;
RC1=0;
RD2=1;
RD0=0;
}

if(count==1375)
{
RD2=0;
RD1=1;
}

if(count==1500)
{
RD1=0;
RD0=1;
RB0=0;
RB2=1;
}

if(count==1875)
{
RB2=0;
RB1=1;
}

if(count==2000)
{
RB1=0;
RB0=1;
RA0=0;
RA2=1;
count=0;
}


}
}








