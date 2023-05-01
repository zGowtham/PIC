#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTA
#define _XTAL_FREQ 4000000

int m,n,q;
int a,b,c,d,e,f,i;
static int count=0;
char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

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


void interrupt intr()
{
if(INTF==1)
{

command(0X0C);
command(0X38);

for(i=count;i>=0;i--)
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

delay(3000);
}

}
INTF=0;
}


void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X01; PORTB=0X00;
TRISA=0X00; PORTA=0X00;
TRISC=0X00; PORTC=0X00;

GIE=1; //global interrupt
PEIE=1; // peripheral interrupt
INTE=1; // Enabling interrupt


while(1)
{
count=0;
for(m=0;m<10;m++)
{
PORTC=number[m];
for(q=0;q<3;q++)
{
__delay_ms(100);
}
count++;
}



}
}