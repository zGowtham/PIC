#include<pic.h>
#define _XTAL_FREQ 4000000

void main()
{
TRISA=0X00; PORTA=0X00;


int i,j;
char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
int value = 0;
value = eeprom_read(11);

while(1)
{
for(i=value;i<10;i++)
{
PORTA=number[i];
eeprom_write(11,i);

if(i==9)
{
value=0;
eeprom_write(11,value);
}

for(j=0;j<4;j++)
{
__delay_ms(100);
}

}

}
}