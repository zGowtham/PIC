#include<pic.h>

int time_delay(int x)
{
x--;
}

void main()
{

ANSEL=0X00;
ANSELH=0X00;

TRISA=0X00;

RA0=1;
time_delay(50);
RA2=1;
time_delay(50);
RA4=1;
time_delay(50);
RA6=1;

time_delay(500);

RA0=0;
time_delay(50);
RA2=0;
time_delay(50);
RA4=0;
time_delay(50);
RA6=0;

time_delay(500);

RA1=1;
time_delay(50);
RA3=1;
time_delay(50);
RA5=1;
time_delay(50);
RA7=1;

time_delay(500);

RA1=0;
time_delay(50);
RA3=0;
time_delay(50);
RA5=0;
time_delay(50);
RA7=0;

time_delay(500);
}