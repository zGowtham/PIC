#include <pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000


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
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISB=0X00; PORTB=0X00;
TRISA=0X10; PORTA=0X00;
TRISE=0X00; PORTE=0X00;

command(0X0C);
command(0X38);

command(0X80);
data('0');
command(0X81);
data('0');


OPTION=0X20;
TMR0=0;


int count=0;
int a,b,c,d;



while(1)
{

if(RA4==1)
{
count++;

a=count/10;
b=count%10;

c=TMR0/10;
d=TMR0%10;

command(0X80);
data(a+48);
command(0X81);
data(b+48);

while(RA4==1);

command(0XC0);
data(c+48);
command(0XC1);
data(d+48);

}



}
}
