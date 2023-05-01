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
int i=0,j=0;
int x=0,y=0;

while(1)
{
for(i=0;i<9999;i++)
{
int a=i/1000;
int z=i%1000;
int b=z/100;
int k=i%100;
int p=k/10;
int q=i%10;

for(j=0;j<8;j++)
{
RD1=1;
RD2=1;
RD3=1;
RD0=0;
PORTC=number[a];
time_delay(100);

RD0=1;
RD2=1;
RD3=1;
RD1=0;
PORTC = number[b];
time_delay(100);

RD0=1;
RD1=1;
RD3=1;
RD2=0;
PORTC = number[p];
time_delay(100);

RD0=1;
RD1=1;
RD2=1;
RD3=0;
PORTC = number[q];
time_delay(100);

}
}

}
}
