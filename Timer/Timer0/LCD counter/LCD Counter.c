#include <pic.h>
__CONFIG(0X2CE4);

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

#define B1 RA0 

int time;
int a,b;

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
TRISB=0X01; PORTB=0X00;
TRISA=0X01; PORTA=0X00;
TRISE=0X00; PORTE=0X00;


command(0X0C);
command(0X38);

command(0X80);
data('0');
command(0X81);
data('1');
command(0X83);
string("Seconds");

OPTION=0X05;
TMR0=131;

while(1)
{

if(B1==1)
{
count=0;
 
while(B1==1)
{
if(T0IF==1)
{
count++;
T0IF=0;
TMR0=131; //125=1sec
}
}
}

time=count/125;

a=time/10;
b=time%10;

command(0X80);
data(a+48);
command(0X81);
data(b+48);


}

}