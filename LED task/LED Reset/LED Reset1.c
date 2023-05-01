
#include<pic.h>

void main()
{
int temp=0;
TRISA=0X07;
TRISC=0;
ANSEL=0;
ANSELH=0;
PORTA=PORTC=0;
while(-1)
{

if(RA2==1)
{
	temp++;
}


if(temp%2==0)
{
	if(RA0==1)
{
	RC0=1;
	while(RA0==1);
}

if(RA1==1)
{
RC0=0;
while(RA1==1);
}
}

if(temp%2==1)
{
	if(RA0==1)
{
	RC0=0;
while(RA0==1);
}

if(RA1==1)
{
RC0=1;
while(RA1==1);
}	
}

}
}