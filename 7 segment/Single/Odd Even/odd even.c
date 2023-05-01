#include<pic.h>

#define B1 RA0;
#define B2 RA1;

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X02;
TRISC=0X00;
PORTC=0X00;

ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

int i;


while(1)
{
if(B1==1)
{
for(i=0;i<10;i++)
{

if((i%2)=1)
{
PORTC=number[i];
time_delay(30000);
}

}
}

if(B2==1)
{
for(i=0;i<10;i++)
{
if((i%2)!=1)
{
PORTC=number[i];
time_delay(30000);
}

}
}
}



}