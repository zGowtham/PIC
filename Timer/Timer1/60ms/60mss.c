#include <pic.h>

int count=0;

void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISC=0X00; PORTC=0X00;


T1CON=0X39;
//TMR1=3036;
TMR1L=0XDC;
TMR1H=0X0B;

while(1)
{

if(TMR1IF==1)
{
count++;
TMR1IF=0;
TMR1L=0XDC;
TMR1H=0X0B;
}

if(count==2)
{
RD0=1;
}

if(count==4)
{
RD0=0;
}

if(count==6)
{
count=0;
}

}
}