#include <pic.h>

int x;
void delay()
{
while(x--);
}

void interrupt intr()
{
if(INTF==1)
{
RC0=1;
RD0=0;
delay(30000);
INTF=0;
RC0=0;
}

//if button is lifted up, the condition should fail and void main 
//should start functioning but that is not happening here

}


void main()
{
TRISB=0X01; PORTB=0X00; ANSEL=0;
TRISD=0X00; PORTD=0X00; ANSELH=0;
TRISC=0X00; PORTC=0X00;
TRISA=0X00; PORTA=0X00;

GIE=1; //global interrupt
PEIE=1; // peripheral interrupt
INTE=1; // Enabling interrupt

while(1)
{
RD0=1;
}

}




