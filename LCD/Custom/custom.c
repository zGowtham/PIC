#include<pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD

#define _XTAL_FREQ 4000000

char custom[]={0X0A,0X04,0X0A,0X11,0X0A,0X04,0X00};

char custom1[]={0x1F,0x11,0X01,0x1F,0x11,0x11,0x1F};
char custom2[]={0x17,0x15,0X15,0x15,0x15,0x015,0x1F};
char custom3[]={0x1F,0x14,0X14,0x14,0x14,0x014,0x14};


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
int i;
TRISA=0X00; PORTA=0X00; ANSEL=0;
TRISB=0X00; PORTB=0X00; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISD=0X00; PORTD=0X00;
TRISE=0X00; PORTE=0X00;

//command(0X02); // 4 bit mode itself
command(0X0C); // display on cursor off
command(0X38); // 5*7 display in 4 bit mode
command(0X80);

command(0x40);
for(i=0;i<7;i++)
{
data(custom[i]);
}

command(0x48);
for(i=0;i<7;i++)
{
data(custom1[i]);
}

command(0x50);
for(i=0;i<7;i++)
{
data(custom2[i]);
}

command(0x58);
for(i=0;i<7;i++)
{
data(custom3[i]);
}


while(1)
{
/*
command(0x80);
data(0x00);
delay(2000);
*/

command(0x81);
data(0x01);
delay(2000);

command(0x82);//LCD's display command
data(0x02);//LCD's memory
delay(2000);

command(0x83);
data(0x02);
delay(2000);

command(0x84);
data(0x03);
delay(2000);


}


}




