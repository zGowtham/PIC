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
int i,j;
int balance=5000;
int withdraw;



static int count=0;
static int countkey=0;
static int countu=-1;
static int countp=-1;
static int countspecial=0;
static int countw=-1;

static int keytopwd=0;

static int count22=0;
static int count33=0;
static int count44=0;
static int count55=0;

int username[10]={1,2,3,4};
int inputuser[20];
int password[10]={9,8,9,0};
int inputpass[20];
int wdraw[10];

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

int l=balance/1000;
int m=balance%1000;
int n=m/100;
int o=m%100;
int p=o/10;
int q=o%10;

TRISD=0X00; PORTD=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X07; PORTB=0X00;

command(0X0C);
command(0X38);

if(count==0)
{
command(0X80);
string("WELCOME TO KVB");
}

if(count==0)
{
command(0XC0);
string("PRESS # TO BEGIN");
}

while(1)
{
A=0,B=0,C=0,D=1;
if(C1==1)
{
command(0X01);
countkey++;
string("ENTER 4 DIGIT ID");
command(0XC0);
break;
}
}

while(1)
{
A=1,B=0,C=0,D=0;

if(A1==1)
{
var=1;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=2;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=3;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(C1==1);
}

A=0,B=1,C=0,D=0;
if(A1==1)
{
var=4;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=5;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=6;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(C1==1);
}

A=0,B=0,C=1,D=0;
if(A1==1)
{
var=7;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=8;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=9;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(C1==1);
}

A=0,B=0,C=0,D=1;

if(B1==1)
{
var=0;
count++;
countu++;
inputuser[countu]=var;
data(var+48);
while(B1==1);
}

if(countu==3)
{
command(0X01);
command(0X80);

if(count22==0)
{
count22++;
command(0X01);

if((username[0]==inputuser[0])&&(username[1]==inputuser[1])&&(username[2]==inputuser[2])&&(username[3]==inputuser[3]))
{
string("CORRECT USERNAME");


for(i=0;i<5;i++)
{
__delay_ms(100);
}
command(0X01);

/*
string("PRESS #");

while(1)
{
A=0,B=0,C=0,D=1;
if(C1==1)
{
command(0X01);
break;
}
}
*/

string("ENTER 4DIGIT KEY");
for(i=0;i<5;i++)
{
__delay_ms(100);
}

command(0XC0);

while(1)
{

A=1,B=0,C=0,D=0;

if(A1==1)
{
var=1;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=2;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=3;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(C1==1);
}

A=0,B=1,C=0,D=0;
if(A1==1)
{
var=4;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=5;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=6;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(C1==1);
}

A=0,B=0,C=1,D=0;
if(A1==1)
{
var=7;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=8;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=9;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(C1==1);
}

A=0,B=0,C=0,D=1;

if(B1==1)
{
var=0;
count++;
countp++;
inputpass[countp]=var;
data(var+48);
while(B1==1);
}


if(countp==3)
{
command(0X01);
command(0X80);

if(count33==0)
{
count33++;
command(0X01);

if((password[0]==inputpass[0])&&(password[1]==inputpass[1])&&(password[2]==inputpass[2])&&(password[3]==inputpass[3]))
{
string("CORRECT PASSWORD");
}

else
{
string("INVALID PASSWORD");
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

string("WELCOME");
for(i=0;i<7;i++)
{
__delay_ms(100);
}
command(0X01);


string("CHOOSE OPTION");
for(i=0;i<7;i++)
{
__delay_ms(100);
}
command(0X01);


string("1.WITHDRAW MONEY");
command(0XC0);

for(i=0;i<5;i++)
{
__delay_ms(100);
}

string("2.CHECK BALANCE");
for(i=0;i<5;i++)
{
__delay_ms(100);
}

//command(0X01);

while(1)
{
A=1,B=0,C=0,D=0;

if(A1==1)
{
var=1;
countspecial=1;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=2;
countspecial=2;
data(var+48);
while(B1==1);
}

if(countspecial>0)
{
break;
}

}


if(countspecial==1)
{

for(i=0;i<5;i++)
{
__delay_ms(100);
}

command(0X01);

string("EXAMPLE:");

for(i=0;i<7;i++)
{
__delay_ms(100);
}

command(0X01);


string("TO WITHDRAW");
command(0XC0);
string("55 RUPEES");

for(i=0;i<7;i++)
{
__delay_ms(100);
}
command(0X01);

string("ENTER 0055");
for(i=0;i<7;i++)
{
__delay_ms(100);
}
command(0X01);

string("ENTER AMOUNT + #");
command(0XC0);


while(1)
{

A=1,B=0,C=0,D=0;
if(A1==1)
{
var=1;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=2;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=3;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(C1==1);
}

//

A=0,B=1,C=0,D=0;
if(A1==1)
{
var=4;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=5;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=6;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(C1==1);
}

//

A=0,B=0,C=1,D=0;
if(A1==1)
{
var=7;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(A1==1);
}

if(B1==1)
{
var=8;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
var=9;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(C1==1);
}

//

A=0,B=0,C=0,D=1;
if(B1==1)
{
var=0;
count++;
countw++;
wdraw[countw]=var;
data(var+48);
while(B1==1);
}

if(C1==1)
{
break;
while(B1==1);
}
}

command(0X01);

for(i=0;i<4;i++)
{
var=wdraw[i];
data(var+48);
__delay_ms(100);
}


command(0X01);

for(i=0;i<5;i++)
{
__delay_ms(100);
}

if((wdraw[0]==5)&&(wdraw[1]==0)&&(wdraw[2]==0)&&(wdraw[3]==0)||(wdraw[0]<5))
{
string("WITHDRAW SUCCESSFUL");
}

else
{
string("INSUFFICIENCT");
command(0XC0);
string("BALANCE");
}

for(i=0;i<5;i++)
{
__delay_ms(100);
}

}


if(countspecial==2)
{

for(i=0;i<5;i++)
{
__delay_ms(100);
}

command(0X01);

command(0X80);
data(l+48);
data(n+48);
data(p+48);
data(q+48);

}

for(i=0;i<5;i++)
{
__delay_ms(100);
}



}
//All important gap

else
{
string("INVALID NUMBER");
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

//exit to voidmain

}//top while
}







