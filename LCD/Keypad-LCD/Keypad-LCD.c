#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD

#define A RB3
#define B RB4
#define C RB5
#define D RB6
#define A1 RB0
#define B1 RB1
#define C1 RB2

int var=0;
static int count=0;

void delay(int x)
{
while(x--);
}

void pulse()
{
EN=1;
delay(1000);
EN=0;
delay(1000);
}

void command(char data)
{
RS=0;
LCD=data;
pulse();
}

void data(char data)
{
RS=1;
LCD=data;
pulse();
}


void main()
{

TRISD=0X00; PORTD=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X07; PORTB=0X00;

command(0X0C);
command(0X38);

while(1)
{
//command(0X80);

A=1,B=0,C=0,D=0;
if(A1==1)
{
var=1;
count++;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=2;
count++;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=3;
count++;
data(var+48);
while(C1==1);
}

//

A=0,B=1,C=0,D=0;
if(A1==1)
{
var=4;
count++;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=5;
count++;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=6;
count++;
data(var+48);
while(C1==1);
}

//

A=0,B=0,C=1,D=0;
if(A1==1)
{
var=7;
count++;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=8;
count++;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=9;
count++;
data(var+48);
while(C1==1);
}

//

A=0,B=0,C=0,D=1;
if(B1==1)
{
var=0;
count++;
data(var+48);
while(B1==1);
}

}
}




