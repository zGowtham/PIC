#include<pic.h>

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X00;
TRISC=0X00;
TRISD=0X00;

PORTA=0X00;
PORTC=0X00;
PORTD=0X00;

ANSEL=0;
ANSELH=0;

static int count;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
int a=47;
int b= a/10;
int c= a%10;

int x=83;
int y=x/10;
int z=x%10;

while(1)
{
RD1=1;
RD0=0;
PORTC = number[b];
time_delay(1000);

RD0=1;
RD1=0;
PORTC = number[c];
time_delay(100);

RD3=1;
RD2=0;
PORTC = number[y];
time_delay(1000);

RD2=1;
RD3=0;
PORTC = number[z];
time_delay(100);

}
}

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