#include <pic.h>

int x;
int i;
int j;
static int count=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};

void delay()
{
while(x--);
}


void interrupt intr()
{
if(INTF==1)
{
for(j=count;j>=0;j--)
{
PORTA=number[j];
delay(1000);
}
INTF=0;
}
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
count=0;
for(i=0;i<10;i++)
{
PORTC=number[i];
delay(10000);
count++;
}
}

}




