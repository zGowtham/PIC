#include <pic.h>


static int count=0;

void main()
{
TRISB=0X00; PORTB=0X00; ANSEL=0;
TRISD=0X00; PORTD=0X00; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISA=0X00; PORTA=0X00;

OPTION=0X07;

while(1)
{

if(T0IF==1)
{
count++;
T0IF=0;
}

if(count==0)
{
RA0=1;
}

if(count==15)
{
RA0=0;
}

if(count==30)
{
RA0=1;
}

if(count==45)
{
RA0=0;
}

if(count==90)
{
RA0=1;
}

if(count==150)
{
RA0=0;
}

}
}



