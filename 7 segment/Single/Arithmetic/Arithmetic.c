#include<pic.h>
__CONFIG(0X2CE4);

#define B1 RA0
#define B2 RA1
#define B3 RA2
#define B4 RA3

void time_delay(int x)
{
while(x--);
}

void main()
{

static int count1=0;
static int count2=0; 

int i,j,sum,difference;

TRISA=0X0F;
TRISB=0X00;
PORTA=0X00;
PORTB=0X00;

ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
PORTC=number[0];


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
PORTB=number[sum];
time_delay(10000);
}

if(B4==1)
{
difference=count1-count2;
PORTB=number[difference];
time_delay(10000);
}

}
}




