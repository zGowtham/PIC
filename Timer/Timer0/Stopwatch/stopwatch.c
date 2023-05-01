#include <pic.h>
__CONFIG(0X2CE4);

#define RS RE0
#define EN RE1
#define LCD PORTD

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

command(0X0C);
command(0X38);

OPTION=0X05;


while(1)
{
if(T0IF==1)
{
count++;
T0IF=0;
TMR0=131;
}

static int i=0;
static int j=0;
int k1=0,k2=0;
int a=i/36000;
int b=i/3600;
int c=i/600;
int d=i/60;
int e=j/10;
int f=i%10;

if(count==50)
{
command(0X80);
data(a+48);
command(0X81);
data(b+48);
command(0X82);
data(':');
command(0X83);
{
if(c==6)
{
k2++;
if(k2==540);
{
c=0;
j=0;
}
}
data(c+48);
}
command(0X84);
data(d+48);
command(0X85);
data(':');
command(0X86);
{
if(e==6)
{
k1++;
if(k1==9);
{
e=0;
j=0;
}
}
data(e+48);
}

command(0X87);
data(f+48);
i++;
j++;
count=0;
}


}
}




/*
for(i=0;i<59;i++)
{

a=i/1000;

b=i%1000;
c=b/100;

d=b%100;
e=d/10;

f=d%10;

command(0X80);
data(a+48);
data(c+48);
data(e+48);
data(f+48);
}
*/