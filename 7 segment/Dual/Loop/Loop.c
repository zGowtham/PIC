#include<pic.h>

#define B1 RA0
#define B2 RA1
#define B3 RA2

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X07;
TRISB=0X00;
TRISC=0X00;
TRISD=0X00;


PORTA=0X00;
PORTC=0X00;
PORTB=0X00;
PORTD=0X00;


ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
char number1[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

static int count=0;
static int count1=1;

int i,j,a,b,s1;
int l,m,p,q,s2;
int x,y,z,z1;

s1=0;
s2=0;

while(1)
{
for(i=0;i<100;i++)
{
count++;
if(s1==1)
{break;}

a=i/10;
b=i%10;

for(j=0;j<20;j++)
{
RB1=1;
RB0=0;
PORTC=number[a];
time_delay(330);

RB0=1;
RB1=0;
PORTC=number[b];
time_delay(330);
//while(B2==1);
}

if(B1==1)
{s1=1;}
}

if(B1==1)
{
for(l=count;l<100;l++)
{
count1++;
p=l/10;
q=l%10;

for(m=0;m<20;m++)
{
RB7=1;
RB6=0;
PORTD=number[p];
time_delay(333);

RB6=1;
RB7=0;
PORTD=number[q];
time_delay(333);
//while(B2==1);
}
}

for(z=count;count<100;count++)
{

x=count/10;
y=count%10;

for(z1=0;z1<20;z1++)
{
RB1=1;
RB0=0;
PORTC=number[x];
time_delay(330);

RB0=1;
RB1=0;
PORTC=number[y];
time_delay(330);
//while(B2==1);
}
}


}
}
}
