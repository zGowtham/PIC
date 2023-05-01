#include <pic.h>
__CONFIG(0X2CE4);

static int count=0;

void main()
{
TRISB=0X00; PORTB=0X00; ANSEL=0X00; ANSELH=0X00;
TRISA=0X00; PORTA=0X00;

OPTION=0X05;

while(1)
{
RA1=1;
if(T0IF==1)
{
count++;
T0IF=0;
TMR0=131;
}

if(count==0)
{
RA0=1;
}

if(count==375)
{
RA0=0;
}

if(count==750)
{
RA0=1;
}

if(count==1125)
{
RA0=0;
}

if(count==1500)
{
RA0=1;
count=0;
}

/*
if(count==1875)
{

}
*/


}
}



