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
int num1,num2,sum,product;


void time_delay(int x)
{
while(x--);
}

void display(int var)
{
int tens=var/10;
int units=var%10;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

{
RC1=1;
RC0=0;
PORTA=number[tens];
time_delay(1000);
RC0=1;
RC1=0;
PORTA=number[units];
time_delay(1000);
}


if(count%2!=0)
{
num1=var;
}
if(count%2==0)
{
num2=var;
}
}

void addition()
{
if(count%3==0)
{
sum=num1+num2;

int tens=sum/10;
int units=sum%10;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

while(1)
{
RC1=1;
RC0=0;
PORTA=number[tens];
time_delay(1000);
RC0=1;
RC1=0;
PORTA=number[units];
time_delay(1000);
}
}
}

void multiplication()
{
if(count%3==0)
{
product=num1*num2;

int tens=product/10;
int units=product%10;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

while(1)
{
RC1=1;
RC0=0;
PORTA=number[tens];
time_delay(1000);
RC0=1;
RC1=0;
PORTA=number[units];
time_delay(1000);
}
}
}


void main()
{
TRISA=0X00;
TRISB=0X07;
TRISC=0X00;
TRISE=0X00;

PORTA=0X00;
PORTB=0X00;
PORTC=0X00;
PORTE=0X00;

ANSEL=0;
ANSELH=0;


while(1)
{
while(count<4)
{
display(var);
A=1,B=0,C=0,D=0;

if(count==1)
{
RE0=1;
}

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
addition();
while(A1==1);
}

if(C1==1)
{
count++;
multiplication();
while(C1==1);
}

}
}
}

