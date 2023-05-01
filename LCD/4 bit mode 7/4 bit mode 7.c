#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD



#define _XTAL_FREQ 4000000

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

LCD=(data&0X80)>>7;
pulse();
LCD=(data&0X40)>>6;
pulse();

LCD=(data&0X20)>>5;
pulse();
LCD=(data&0X10)>>4;
pulse();

LCD=(data&0X08)>>3;
pulse();
LCD=(data&0X04)>>2;
pulse();

LCD=(data&0X02)>>1;
pulse();
LCD=(data&0X01);
pulse();
}



void data(char data)
{
RS=1;

LCD=(data&0X80)>>7;
pulse();
LCD=(data&0X40)>>6;
pulse();

LCD=(data&0X20)>>5;
pulse();
LCD=(data&0X10)>>4;
pulse();

LCD=(data&0X08)>>3;
pulse();
LCD=(data&0X04)>>2;
pulse();

LCD=(data&0X02)>>1;
pulse();
LCD=(data&0X01);
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

TRISC=0X00; PORTC=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
TRISB=0X00; PORTB=0X00;
TRISD=0X00; PORTD=0X00;
TRISA=0X00; PORTA=0X00;

command(0X02); // 4 bit mode itself
command(0X0C); // display on cursor off
command(0X28); // 5*7 display in 4 bit mode

while(1)
{
command(0X80);
string("Gowtham");
}

}




