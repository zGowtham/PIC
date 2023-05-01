#include<pic.h>

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISB=0X00;
TRISC=0X00;

PORTA=0X00;
PORTC=0X00;

ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
int i,j;

while(1)
{
for(i=0,j=9;i<10,j>=0;i++,j--)
{
RB1=1;
RB0=0;
PORTC=number[i];
time_delay(3333);

RB0=1;
RB1=0;
PORTC=number[j];
time_delay(3333);

}

/*
for(j=9;j>=0;j--)
{

}
*/

}
}