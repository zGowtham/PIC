#include<pic.h>

#define Button RA0
#define LED RC0

void main()
{
TRISA=0X01;
TRISC=0X00;
ANSEL=0X00;
ANSELH=0X00;

PORTA=0X00;
PORTC=0X00;

while(1)
{
if(Button==1)
{
LED=1;
}
}
}
