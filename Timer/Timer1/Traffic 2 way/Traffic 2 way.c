#include <pic.h>

static int count=0;

int a=0,b=0,c=0;
int a1=0,b1=0,c1=0;

int count1=0;

void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISB=0X00; PORTB=0X00;

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

if(count==0)
{
RB0=1;
RD2=1;
}

if(count==6)
{
RD1=1;
RD2=0;
}

if(count==8)
{
RB0=0;
RB2=1;
RD0=1;
RD1=0;
}

if(count==14)
{
RB2=0;
RB1=1;
}

if(count==16)
{
RD0=0;
RB1=0;
count=0;
}
}

}








