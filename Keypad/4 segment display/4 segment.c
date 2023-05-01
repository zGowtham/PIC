#include<pic.h>

#define A RB3
#define B RB4
#define C RB5
#define D RB6

#define A1 RB0
#define B1 RB1
#define C1 RB2


int var=0;
static int count=0;
int i=0,j=0;
char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
int a,b,p,q;
int k,z;

void time_delay(int x)
{
while(x--);
}

void display(int var)
{

a=var/1000;

z=var%1000;
b=z/100;

k=var%100;
p=k/10;

q=var%10;

if(count%4==1||count==0)
{
for(j=0;j<2;j++)
{
RD1=1;
RD2=1;
RD3=1;
RD0=0;
PORTC=number[a];
time_delay(1000);

RD0=1;
RD2=1;
RD3=1;
RD1=0;
PORTC = number[b];
time_delay(1000);

RD0=1;
RD1=1;
RD3=1;
RD2=0;
PORTC = number[p];
time_delay(1000);

RD0=1;
RD1=1;
RD2=1;
RD3=0;
PORTC = number[q];
time_delay(1000);
}
}

if(count%4==2)
{
for(j=0;j<2;j++)
{
RD1=1;
RD2=1;
RD3=1;
RD0=0;
PORTC=number[a];
time_delay(1000);

RD0=1;
RD2=1;
RD3=1;
RD1=0;
PORTC = number[b];
time_delay(1000);

RD0=1;
RD1=1;
RD3=1;
RD2=0;
PORTC = number[q];
time_delay(1000);

RD0=1;
RD1=1;
RD2=1;
RD3=0;
PORTC = number[p];
time_delay(1000);
}
}

if(count%4==3)
{
for(j=0;j<2;j++)
{
RD1=1;
RD2=1;
RD3=1;
RD0=0;
PORTC=number[a];
time_delay(1000);

RD0=1;
RD2=1;
RD3=1;
RD1=0;
PORTC = number[q];
time_delay(1000);

RD0=1;
RD1=1;
RD3=1;
RD2=0;
PORTC = number[p];
time_delay(1000);

RD0=1;
RD1=1;
RD2=1;
RD3=0;
PORTC = number[b];
time_delay(1000);
}
}

if(count%4==0)
{
for(j=0;j<2;j++)
{
RD1=1;
RD2=1;
RD3=1;
RD0=0;
PORTC=number[q];
time_delay(1000);

RD0=1;
RD2=1;
RD3=1;
RD1=0;
PORTC = number[p];
time_delay(1000);

RD0=1;
RD1=1;
RD3=1;
RD2=0;
PORTC = number[b];
time_delay(1000);

RD0=1;
RD1=1;
RD2=1;
RD3=0;
PORTC = number[a];
time_delay(1000);
}
}


}


void main()
{

TRISB=0X07;
TRISC=0X00;
TRISD=0X00;
TRISE=0X00;

PORTB=0X00;
PORTC=0X00;
PORTD=0X00;
PORTE=0X00;

ANSEL=0;
ANSELH=0;

while(1)
{

display(var);


A=1,B=0,C=0,D=0;
if(A1==1)
{
var=1;
count++;
while(A1==1);
}
if(B1==1)
{
var=2;
count++;
while(B1==1);
}
if(C1==1)
{
var=3;
count++;
while(C1==1);
}

//

A=0,B=1,C=0,D=0;
if(A1==1)
{
var=4;
count++;
while(A1==1);
}
if(B1==1)
{
var=5;
count++;
while(B1==1);
}
if(C1==1)
{
var=6;
count++;
while(C1==1);
}

//

A=0,B=0,C=1,D=0;
if(A1==1)
{
var=7;
count++;
while(A1==1);
}
if(B1==1)
{
var=8;
count++;
while(B1==1);
}
if(C1==1)
{
var=9;
count++;
while(C1==1);
}

//

A=0,B=0,C=0,D=1;

if(B1==1)
{
var=0;
count++;
while(B1==1);
}
if(A1==1)
{
count++;
while(A1==1);
}
}


}


