#include<pic.h>
__CONFIG(0X2CE4);

long int time_delay(long int x)
{
while(x--);
}

void main()
{

PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0x00;

while(1)
{

int i=0;
int j=0;

for(i=0,j=7;i<4&&j>3;i++,j--)
{
PORTA=PORTA|(1<<i);
PORTA=PORTA|(1<<j);
time_delay(10000);
}

int x=0;
int y=0;

for(x=3,y=4;((x>=0)&&(y<8));x--,y++)
{
PORTA=PORTA&(~(1<<x));
PORTA=PORTA&(~(1<<y));
time_delay(10000);
}

time_delay(10000);

/*
PORTA=PORTA|(1<<0);
PORTA=PORTA|(1<<7);
time_delay(10000);

PORTA=PORTA|(1<<1);
PORTA=PORTA|(1<<6);
time_delay(10000);

PORTA=PORTA|(1<<2);
PORTA=PORTA|(1<<5);
time_delay(10000);

PORTA=PORTA|(1<<3);
PORTA=PORTA|(1<<4);
time_delay(10000);

PORTA=PORTA&(~(1<<3));
PORTA=PORTA&(~(1<<4));
time_delay(10000);

PORTA=PORTA&(~(1<<2));
PORTA=PORTA&(~(1<<5));
time_delay(10000);

PORTA=PORTA&(~(1<<1));
PORTA=PORTA&(~(1<<6));
time_delay(10000);

PORTA=PORTA&(~(1<<0));
PORTA=PORTA&(~(1<<7));
time_delay(10000);

*/

}

}