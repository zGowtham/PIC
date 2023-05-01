#include <pic.h>

int count=0;

void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISB=0X00; PORTB=0X00;
TRISA=0X00; PORTA=0X00;

OPTION=0X04;
TMR0=131;

while(1)
{

if(T0IF==1)
{
count++;
T0IF=0;
TMR0=131; //125=1sec 7.5=0.06, 15=0.06 when 0X04
}

if(count==0)
{
RC0=1;
}

if(count==15)
{
RC0=0;
}

if(count==30)
{
count=0;
}

}
}