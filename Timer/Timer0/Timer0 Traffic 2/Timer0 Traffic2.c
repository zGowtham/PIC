#include <pic.h>

static int count=0;

int a=0,b=0,c=0;
int a1=0,b1=0,c1=0;

int count1=0;

void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISC=0X00; PORTC=0X00;

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
RC0=1;
RD2=1;
}

if(count==375)
{
RD1=1;
RD2=0;
}

if(count==500)
{
RC0=0;
RC2=1;
RD0=1;
RD1=0;
}

if(count==875)
{
RC2=0;
RC1=1;
}

if(count==1000)
{
RD0=0;
RC1=0;
count=0;
}
}

}








