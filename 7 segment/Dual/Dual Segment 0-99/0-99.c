#include<pic.h>
__CONFIG(0X2CE4);

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X00;
TRISB=0X00;
PORTA=0X00;
PORTB=0X00;

ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};


int i,j,a,b;
while(1)
{
for(i=0;i<=99;i++)
{
a=i/10;
b=i%10;

for(j=0;j<20;j++)
{
RA1=0;
RA0=1;
PORTB=number[a];
time_delay(1000);

RA0=0;
RA1=1;
PORTB=number[b];
time_delay(1000);


}
}
}

}
