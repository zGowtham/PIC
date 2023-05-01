#include <pic.h>

#define RS RE0
#define EN RE1
#define LCD PORTD
#define _XTAL_FREQ 4000000

#define B1 RB0
#define B2 RB1
#define LED RB2


int account=0;
int account1=0;
int time=0;
int a,b,c;
static int count=0;


void timer(int c)
{


}
void main()
{
TRISD=0X00; PORTD=0X00; ANSEL=0; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISB=0X03; PORTB=0X00;
TRISA=0X00; PORTA=0X00;
TRISE=0X00; PORTE=0X00;

OPTION=0X85;
TMR0=131;

while(1)
{

if(B1==1)
{
account++;
while(B1==1);
}


if(B2==1)
{
while(B2==1);
LED=1;


while(account>time)
{
if(T0IF==1)
{
count++;
T0IF=0;
TMR0=131; //125=1sec
}
if(count==125)
{
time++;
count=0;
}
}

LED=0;
}




}
}