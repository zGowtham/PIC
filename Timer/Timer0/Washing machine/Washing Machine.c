#include <pic.h>

static int count=0;

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
RC0=1;
RC1=0;
}

if(count==375)
{
RC1=1;
RC0=0;
}

if(count==750)
{
count=0;
}


}
}








