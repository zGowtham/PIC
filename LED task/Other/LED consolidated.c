#include<pic.h>

int time_delay(int x)
{
x--;
}

void main()
{

int count=1;

ANSEL=0X00;
ANSELH=0X00;

TRISA=0X00;
TRISB=0X00;
TRISC=0X00;
TRISD=0X00;
TRISE=0X00;

while(1)
{
while(count==1)
{

RA0=1;
RA1=1;
RA2=1;
RA3=1;
RA4=1;
RA5=1;
RA6=1;
RA7=1;

PORTC=0;

time_delay(1000);

RB0=1;
RB1=1;
RB2=1;
RB3=1;
RB4=1;
RB5=1;
RB6=1;
RB7=1;

PORTA=0;

time_delay(1000);

RE0=1;
RE1=1;
RE2=1;

PORTB=0;

time_delay(1000);

RD0=1;
RD1=1;
RD2=1;
RD3=1;
RD4=1;
RD5=1;
RD6=1;
RD7=1;

PORTE=0;

time_delay(1000);

RC0=1;
RC1=1;
RC2=1;
RC3=1;
RC4=1;
RC5=1;
RC6=1;
RC7=1;

PORTD=0;

time_delay(1000);
count++;	
}
}

}



