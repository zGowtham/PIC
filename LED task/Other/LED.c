#include<pic.h>
//#define _XTAL_FREQ 4000000
void time_delay(long int delay)
{
	while(delay--);
}
void main()
{
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
RA0=1;
time_delay(500);
RA1=1;
time_delay(500);
RA0=0;
//__delay_ms(10);
time_delay(500);
RA2=1;
time_delay(500);
RA1=0;
time_delay(500);
RA3=1;
time_delay(500);
RA2=0;
time_delay(500);
RA4=1;
//__delay_ms(10);
time_delay(500);
RA3=0;
time_delay(500);
RA5=1;
time_delay(500);
RA4=0;
time_delay(500);
RA5=0;
time_delay(500);
}

}