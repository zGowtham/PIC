#include<pic.h>

void delay(int x)
{
while(x--);
}

void main()
{
TRISA=0XFF;
TRISC=0X00;

PORTA=0X00;
PORTC=0X00;

ANSEL=0X00;
ANSELH=0X00;


while(1)
{

//delay(10000);

RC0=1;
//delay(10000);

RC2=1;
//delay(10000);

RC4=1;
//delay(10000);

RC6=1;


delay(20000);

RC0=0;
//delay(10000);

RC2=0;
//delay(10000);

RC4=0;
//delay(10000);

RC6=0;

delay(30000);

RC1=1;
//delay(10000);

RC3=1;
//delay(10000);

RC5=1;
//delay(10000);

RC7=1;
//delay(10000);



}
}








