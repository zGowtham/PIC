#include <pic.h>

static int count=0;
static int k=125;

int a=0,b=0,c=0;

void main()
{
TRISB=0X00; PORTB=0X00; ANSEL=0; ANSELH=0;
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
RC1=1;
RC2=1;
}

if(count%500==0)
{
c++;
if(c%2!=0)
{
RC0=1;
}
if(c%2==0)
{
RC0=0;
}
}

if(count%125==0)
{
a++;
if(a%2!=0)
{
RC1=1;
}
if(a%2==0)
{
RC1=0;
}
}

if(count%375==0)
{
b++;
if(b%2!=0)
{
RC2=1;
}
if(b%2==0)
{
RC2=0;
}
}

}
}



