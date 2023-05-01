#include <pic.h>

#define RS RE0
#define EN RE1

#define LCD PORTD


void delay(int x)
{
x--;
}

void pulse()
{
EN=1;
delay(100);
EN=0;
delay(100);
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

while(1)
{
command(0X80);
data('G');
command(0X81);
data('O');
command(0X82);
data('W');
command(0X83);
data('T');
command(0X84);
data('H');
command(0X85);
data('A');
command(0X86);
data('M');
}
}