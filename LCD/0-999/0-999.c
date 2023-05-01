#include <pic.h>
__CONFIG(0X2CE4);

#define RS RE0
#define EN RE1

#define LCD PORTD


__CONFIG(0X2CE4);
int a,b,c,d,e,f,i;

void delay(int x)
{
x--;
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

command(0X01);

while(1)
{
for(i=0;i<1000;i++)
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

}
}
