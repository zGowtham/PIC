#include<pic.h>

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X00;
TRISC=0X00;

PORTA=0X00;
PORTC=0X00;

ANSEL=0;
ANSELH=0;

static int count;
char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
int a=47;
int b= a/10;
int c= a%10;

while(1)
{

/*
time_delay(100);

PORTA = PORTA&(~(1<<0)); //RA0=0
PORTA = PORTA|(1<<1); //RA1=1

PORTC = number[2];
time_delay(1000);

PORTA = PORTA|(1<<0); //RA0=1
PORTA = PORTA&(~(1<<1)); //RA1=0

PORTC = number[5];
*/

RA1=1;
RA0=0;
PORTC = number[2];
time_delay(1000);

RA0=1;
RA1=0;
PORTC = number[5];
time_delay(1000);

}
}