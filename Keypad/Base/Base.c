#include<pic.h>

#define A RB3
#define B RB4
#define C RB5
#define D RB6

#define A1 RB0
#define B1 RB1
#define C1 RB2

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X00;
TRISB=0X07;
PORTA=0X00;
PORTB=0X00;

ANSEL=0;
ANSELH=0;

static int var;
char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

while(1)
{

A=1,B=0,C=0,D=0;
if(A1==1)
{
var=1;
PORTA=number[var];
}
if(B1==1)
{
var=2;
PORTA=number[var];
}
if(C1==1)
{
var=3;
PORTA=number[var];
}

//

A=0,B=1,C=0,D=0;
if(A1==1)
{
var=4;
PORTA=number[var];
}

if(B1==1)
{
var=5;
PORTA=number[var];
}

if(C1==1)
{
var=6;
PORTA=number[var];
}

//

A=0,B=0,C=1,D=0;
if(A1==1)
{
var=7;
PORTA=number[var];
}

if(B1==1)
{
var=8;
PORTA=number[var];
}

if(C1==1)
{
var=9;
PORTA=number[var];
}

//

A=0,B=0,C=0,D=1;


if(B1==1)
{
var=0;
PORTA=number[var];
}


}

}