#include<pic.h>
__CONFIG(0X2CE4);

void time_delay(int x)
{
while(x--);
}

void main()
{

TRISA=0X00;
TRISB=0X00;
PORTA=0X00;
PORTB=0X00;

ANSEL=0;
ANSELH=0;

char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
//char number1[]={0XC0,0XF9,0XA4,0XB0,0X99,0X92,0X82,0XF8,0X00,0X18};

int i,j;

while(1)
{

for(i=0,j=0;i<10,j<10;i++,j++)
{
PORTB=number[i];
//PORTA=number1[j];
time_delay(30000);

}

}
}


