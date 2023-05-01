#include<pic.h>


#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

#define LED1 RA4
#define LED2 RA5

void string(char *ptr);

int DV, high, low;
int k1=0,k2=0;

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

void count(int i)
{
int a,c,e,f;

a=i/1000;
c=(i%1000)/100;
e=(i%100)/10;
f=i%10;

command(0X80);
data(a+48);
data(c+48);
data(e+48);
data(f+48);
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
LED1=1;
k1=1;
}

if(k1==1)
{
if(DV<400)
{
LED1=0;
}
}

if(DV<308)
{
LED2=1;
k2=1;
}

if(k2==1)
{
if(DV>435)
{
LED2=0;
}
}

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

command(0X87);

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


//sprintf(buffer,"w=%f z=%f",w,z);
//command(0xC0);
//string(buffer);

a1=w/10000;		
b1=w%10000;		
c1=b1/1000;		
d1=b1%1000;		
e1=d1/100;		
f1=d1%100;		
g1=f1/10;			
h1=f1%10;	


command(0X87);

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
command(0XC0);

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



void main()
{
TRISA=0X0F;	PORTA=0X00;
TRISD=0X00;	PORTD=0X00;
TRISE=0X00; PORTE=0X00;

ANSEL=0X01; ANSELH=0X00; // because I am selecting AN0 = 1

command(0X38);
command(0X0C);


while(1)
{
adc();
voltage();
temperature();
}

}













