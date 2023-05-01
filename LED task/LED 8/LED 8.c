#include<pic.h>

void main()
{
TRISA=0XFF;
TRISC=0X00;

PORTA=0X00;
PORTC=0X00;

ANSEL=0X00;
ANSELH=0X00;

static int count=0;


while(1)
{

if(RA0==1)
{
static int count1=0;
if(count1==1)
{continue;}

count++;
while(RA0==1);
if(RA0==0)
{
count1=1;
}
}


if(RA1==1)
{
static int count1=0;
if(count1==1)
{continue;}

count++;
while(RA1==1);
if(RA1==0)
{
count1=1;
}
}

if(RA2==1)
{
static int count1=0;
if(count1==1)
{continue;}

count++;
while(RA2==1);
if(RA2==0)
{
count1=1;
}
}


if(RA3==1)
{
static int count1=0;
if(count1==1)
{continue;}

count++;
while(RA3==1);
if(RA3==0)
{
count1=1;
}
}


if(RA4==1)
{
static int count1=0;
if(count1==1)
{continue;}

count++;
while(RA4==1);
if(RA4==0)
{
count1=1;
}
}

if(RA5==1)
{
static int count1=0;
if(count1==1)
{continue;}

count++;
while(RA5==1);
if(RA5==0)
{
count1=1;
}
}

if(RA6==1)
{
static int count1=0;
if(count1==1)
{
continue;
}

count++;
while(RA6==1);
if(RA6==0)
{
count1=1;
}
}

if(RA7==1)
{
static int count1=0;
if(count1==1)
{
continue;
}

count++;
while(RA7==1);
if(RA7==0)
{
count1=1;
}
}


int i;
{
for(i=0;i<count;i++)
{
PORTC=PORTC|(1<<i);
}
}

}
}








