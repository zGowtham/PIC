#include <pic.h>
__CONFIG(0X2CE4);
#define _XTAL_FREQ 4000000 // 4MHZ, inbuilt function
#define RS RE0
#define EN RE1

#define LCD PORTD

int i;
void delay(int x)
{
while(x--); // just x-- will be blown away by the controller in a few nanoseconds
// so, the difference in visualzing would be negligible. That's why while(x--)
// this ensure it takes the time to check the while(0) condition
//all values apart from while(0) is a true condition
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
//delay(1000); do not disturb the LCD - its job is to display what it is fed with.
//do not ask it to delay its operation. Delay the operation of the controller - always
LCD=data;
//delay(1000);
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
TRISD=0X00; PORTD=0X00; ANSEL=0;
TRISE=0X00; PORTE=0X00; ANSELH=0;
command(0X0C);
command(0X38);

command(0X01);

while(1)
{
command(0X8A);
command(0X18);
string("WELCOME TO MANFREE");
__delay_ms(150); // crystal oscillator communication, asking it to send clock pulses
//after a delay of 1.5 seconds so that we can slow down its operations and hence
//the display

//
}

}