#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

#define A RB3
#define B RB4
#define C RB5
#define D RB6
#define A1 RB0
#define B1 RB1
#define C1 RB2

int var=0;
static int count=0;
static int count1=0;
static int count2=0;


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


void string(char *ptr)
{
while(*ptr)
{
data(*ptr);
*ptr++;
}
}

void main()
{
int i;

TRISD=0X00; PORTD=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X07; PORTB=0X00;
TRISA=0X00; PORTA=0X00;

command(0X0C);
command(0X38);

if(count==0)
{
command(0X80);
string("ENTER NUMBER");
}

command(0XC0);

while(1)
{
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


if(A1==1)
{
count++;
if(count==11)
{
for(i=0;i<10;i++)
{
command(0X80);
if(count2==0)
{
count2++;
command(0X01);
string("CALLING...");
}
}

while(1)
{
A=0,B=0,C=0,D=1;
if(C1==1)
{
break;
}
}
string("CALL ENDED");

for(i=0;i<10;i++)
{
__delay_ms(100);
}

command(0X01);
}

else
{
for(i=0;i<10;i++)
{
command(0X80);
if(count1==0)
{
count1++;
command(0X01);
string("INVALID NUMBER");
}
}
}

for(i=0;i<5;i++)
{
__delay_ms(100);
}
command(0X01);
break;
while(A1==1);
}

}
}


