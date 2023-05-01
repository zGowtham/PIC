#include<pic.h>

#define B1 RA0
#define B2 RA1
#define B3 RA2
#define B4 RA3

void main()
{

static int count1=0;
static int count2=0; 

TRISA=0X0F;
TRISC=0X00;
ANSEL=0X00;
ANSELH=0X00;
PORTA=PORTC=0X00;

int i,j,sum,difference;

while(1)
{

if(B1==1)
{
count1++;
while(B1==1);
}

if(B2==1)
{
count2++;
while(B2==1);
}

if(B3==1)
{
sum=count1+count2;
for(i=0;i<sum;i++)
{
PORTC=PORTC|(1<<i);
}
while(B3==1);
if(B3==0)
{
PORTC=0X00;
}
}

if(B4==1)
{
difference=count1-count2;
for(j=0;j<difference;j++)
{
PORTC=PORTC|(1<<j);
}
while(B4==1);
if(B4==0)
{
PORTC=0X00;
}
}

}
}



