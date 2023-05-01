#include<pic.h>

void main()
{


TRISA=0X07;
TRISC=0;
ANSEL=0;
ANSELH=0;
PORTA=PORTC=0;

while(1)
{

if(RC1==0)
{
if(RA0==1)
{
RC0=1;
}
}

if(RC0==0)
{
if(RA1==1)
{
RC1=1;
}
}

if(RA2==1)
{
RC0=RC1=0;
}

}
}