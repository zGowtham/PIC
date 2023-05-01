#include<pic.h>
#define Button1 RA0
#define Button2 RA1


void main()
{
TRISA=0X01;
TRISC=0X00;

PORTA=0X00;
PORTC=0X00;

ANSEL=0X00;
ANSELH=0X00;

if(Button1==1)
{
RC0=1;
RC2=1;
RC4=1;
RC6=1;
}
if(Button2==1)
{
RC1=1;
RC3=1;
RC5=1;
RC7=1;
}
}