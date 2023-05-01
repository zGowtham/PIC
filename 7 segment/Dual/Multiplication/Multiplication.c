#include<pic.h>

#define B1 RA0
#define B2 RA1
#define B3 RA2

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X07;
TRISB=0X00;
TRISC=0X00;

PORTA=0X00;
PORTC=0X00;
PORTC=0X00;


ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
char number1[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

static int count, count1 = 0;

static int product = 0;
static int i = 0;
static int j = 0;
static int k = 0;

while(1)
{
if(B1==1)
{
count++;
while(B1==1);
}


if(B2==1)
{
count1++;
while(B2==1);
}

if(B3==1)
{
product=count1*count;
i=product/10;
j=product%10;

for(k=0;k<20;k++)
{
RB1=1;
RB0=0;
PORTC=number[i];
time_delay(1000);

RB0=1;
RB1=0;
PORTC=number1[j];
time_delay(1000);

while(B3==1);
k--;
}
}
}
}