#include<pic.h>

#define B1 RA4
#define B2 RA5
#define B3 RA6
#define B4 RA7

#define RED RB2
#define GREEN RB3

#define F1 RB4
#define F2 RB5
#define F3 RB6
#define F4 RB7

#define FWD RC0
#define REV RC1
#define FAN RC2

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

int DV, high, low;
int k1=0,k2=0;
int input=0, output=0;
static int counttmr=0;


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



void lift()
{
if(B1==1)
{
input=1;

command(0X80);
string("GOING TO 1ST");
}

if(B2==1)
{
input=2;

command(0X80);
string("GOING TO 2ND");

}

if(B3==1)
{
input=3;

command(0X80);
string("GOING TO 3RD");

}

if(B4==1)
{
input=4;

command(0X80);
string("GOING TO 4TH");

}

//

if(F1==1)
{
output=1;


}

if(F2==1)
{
output=2;


}

if(F3==1)
{
output=3;


}

if(F4==1)
{
output=4;


}


if(input>output)
{
FWD=1;
REV=0;
RED=1;
GREEN=0;
}

if(input<output)
{
FWD=0;
REV=1;
RED=1;
GREEN=0;
}

if(input==output)
{
FWD=0;
REV=0;
RED=0;
GREEN=1;
}
}

void count(int i) 
{
int a,c,e,f;

a=i/1000;
c=(i%1000)/100;
e=(i%100)/10;
f=i%10;

//command(0X80);
//data(a+48);
//data(c+48);
//data(e+48);
//data(f+48);
}

void adc()
{
ADCON0=0X83; ADCON1=0XB0;
while(ADCON0 & 0X02);
high=ADRESH; low=ADRESL;

if(high==0)
{
DV=low;
count(DV);
}

if(high==1)
{
DV=low+256;
count(DV);
}

if(high==2)
{
DV=low+512;
count(DV);
}

if(high==3)
{
DV=low+768;
count(DV);
}


if(DV>434)
{
FAN=1;
//k1=1;
}

if(DV>434)
{
FAN=1;
//k1=1;
}

if(DV<413)
{
FAN=0;
//k1=1;
}


/*
if(k1==1)
{
if(DV<400)
{
FAN=0;
}
}
*/

}





void temperature()
{
int a,b,c,d,e,f,g,h,w;
int a1,b1,c1,d1,e1,f1,g1,h1;
float z,w1;
char buffer[20];
z=(DV*205.0)/1023.0;


if(DV>275)
{

w1=z*100;		
w=w1-5500;   	

a=w/10000;		
b=w%10000;		
c=b/1000;		
d=b%1000;		
e=d/100;		
f=d%100;		
g=f/10;			
h=f%10;	

command(0XC0);

data(0X2B);
data(a+48);
data(c+48);
data(e+48);
data(0X2E);
data(g+48);
data(h+48);
data(0XDF);
data(0X43);
}


if(DV<275)
{

w1=z*100;		
w=5500-w1;   	

a1=w/10000;		
b1=w%10000;		
c1=b1/1000;		
d1=b1%1000;		
e1=d1/100;		
f1=d1%100;		
g1=f1/10;			
h1=f1%10;	


command(0XC0);

data(0X2D);
data(a1+48);
data(c1+48);
data(e1+48);
data(0X2E);
data(g1+48);
data(h1+48);
data(0XDF);
data(0X43);
}
}

void voltage()
{
command(0XC7);

int a,b,c,w;
float z,w1;

z=(DV*2.05)/1023.0;

if(DV>275)
{
w1=z*100; //205
w= w1-55; //150

a=w/100; //1
b=(w%100)/10; //5
c=w%10; // 0

data(0X2B);
data(a+48);
data(0X2E); //.
data(b+48);
data(c+48);
data(0X20); // space
data(0X56); //'v'
}

if(DV<=275)
{
w1=z*100; 
w= 55-w1; 

a=w/100; 
b=(w%100)/10; 
c=w%10; 

data(0X2D);
data(a+48);
data(0X2E); //.
data(b+48);
data(c+48);
data(0X20); // space
data(0X56); //'v'
}
}

void count1(int i)  
{

int a,c,e,f;

a=i/1000;
c=(i%1000)/100;
e=(i%100)/10;
f=i%10;

command(0XC0);  
data(a+48);
data(c+48);
data(e+48);
data(f+48);
}

void adc1()
{
ADCON0=0X87; ADCON1=0X80;
while(ADCON0 & 0X02);
high=ADRESH; low=ADRESL;

if(high==0)
{
DV=low;
count1(DV);
}

if(high==1)
{
DV=low+256;
count1(DV);
}

if(high==2)
{
DV=low+512;
count1(DV);
}

if(high==3)
{
DV=low+768;
count1(DV);
}
}

void voltage1()
{
command(0XC7);
int a,b,c,d;
float z;

z=(DV*5.0)/1023.0;

d=z*100;
a=d/100;
b=(d%100)/10;
c=d%10;

if(b>0)
{
RC3=1;
}

if(b<1)
{
RC3=0;
}

data(a+48);
data(0X2E); //.
data(b+48);
data(c+48);
data(0X20); // space
data(0X56); //'v'
}


void tmr()
{

if(T0IF==1)
{
counttmr++;
T0IF=0;
TMR0=131;
}

if(counttmr==0)
{
command(0X01);
string("GROUND FLOOR");
}

if(counttmr==375)
{
FWD=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}

if(counttmr==750)
{
FWD=0;
RC4=1;
RC5=0;
RC6=0;
RC7=0;
command(0X01);
string("FIRST FLOOR");
}

if(counttmr==875)
{
FWD=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}


if(counttmr==1250)
{
FWD=0;
RC4=0;
RC5=1;
RC6=0;
RC7=0;
command(0X01);
string("SECOND FLOOR");
}

if(counttmr==1375)
{
FWD=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}


if(counttmr==1750)
{
FWD=0;
RC4=0;
RC5=0;
RC6=1;
RC7=0;
command(0X01);
string("THIRD FLOOR");
}

if(counttmr==1875)
{
FWD=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}

if(counttmr==2250)
{
FWD=0;
RC4=0;
RC5=0;
RC6=0;
RC7=1;
command(0X01);
string("FOURTH FLOOR");
}

if(counttmr==2375)
{
REV=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}

if(counttmr==2750)
{
REV=0;
RC4=0;
RC5=0;
RC6=1;
RC7=0;
command(0X01);
string("THIRD FLOOR");
}

if(counttmr==2875)
{
REV=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}

if(counttmr==3250)
{
REV=0;
RC4=0;
RC5=1;
RC6=0;
RC7=0;
command(0X01);
string("SECOND FLOOR");
}

if(counttmr==3375)
{
REV=1;
RC4=0;
RC5=0;
RC6=0;
RC7=0;
}

if(counttmr==3750)
{
REV=0;
RC4=1;
RC5=0;
RC6=0;
RC7=0;
command(0X01);
string("FIRST FLOOR");
}

if(counttmr==3875)
{
RC4=0;
counttmr=0;
}


}


void main()
{
TRISA=0XFF; PORTA=0X00;
TRISB=0XF3; PORTB=0X00;
TRISC=0X00; PORTC=0X00;
TRISD=0X00; PORTD=0X00;
TRISE=0X00; PORTE=0X00;

ANSEL=0X03; ANSELH=0X00;

command(0X0C);
command(0X38);

OPTION=0X85;


while(1)
{

if(RB0==1)
{
lift();
adc();
//adc1();
temperature();
//voltage();
//voltage1();
}


if(RB1==1)
{
//adc();
//temperature();
tmr();
}


}
}


/*



*/