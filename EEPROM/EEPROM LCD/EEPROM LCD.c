#include<pic.h>
#define _XTAL_FREQ 4000000

#define RS RE0
#define EN RE1
#define LCD PORTD

int a,b,c,d,e,f,i,j;

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
TRISD=0X00; PORTD=0X00;
TRISE=0X00; PORTE=0X00;
ANSEL=0x00; ANSELH=0x00;

command(0X0C);
command(0X38);

command(0X01);


int k,m,x;

int value = 0;
int value1 = 0;
int value2 = 0;
int value3 = 0;

value = eeprom_read(11);
value1 = eeprom_read(12);
value2 = eeprom_read(13);
value3 = eeprom_read(14);

x=value+value1+value2+value3;


while(1)
{


for(i=x;i<1000;i++)
{


if(i<256)
{
k=i;
eeprom_write(11,k);
}


if(i>255&&i<511)
{
m = i-255;
//k = 255+m;
eeprom_write(12,m);
}


if(i>510&&i<766)
{
m = i-510;
//k = 512+m;
eeprom_write(13,m);
}


if(i>765)
{
m = i-765;
//k = 767+m;
eeprom_write(14,m);
}


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

if(i==999)
{

value=0;
i=0;
eeprom_write(11,i);
eeprom_write(12,i);
eeprom_write(13,i);
eeprom_write(14,i);
}

__delay_ms(100);

}



}
}












