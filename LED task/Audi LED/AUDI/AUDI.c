

#include<pic.h>
__CONFIG(0X2CE4);


long int time_delay(long int x)
{
while(x--);
}

void main()
{

static int y=7;
static int q=7;
static int h=15;
static int x=7;
static int p=7;

PORTA=0X00;
PORTB=0X00;
PORTC=0X00;

TRISA=0X00;
TRISB=0X00;
TRISC=0X00;

ANSEL=0X00;
ANSELH=0x00;


RC5=1;
time_delay(10000);
RC5=0;


int count=1;
int i,j=0;


while(1)
while(count==1)
{

for(i=0;i<8;i++)
{
PORTA=PORTA|(1<<i);
time_delay(500);
PORTA=PORTA&(~(1<<i));
time_delay(500);
}

for(j=0;j<8;j++)
{
PORTB=PORTB|(1<<j);
time_delay(500);
PORTB=PORTB&(~(1<<j));
time_delay(500);
}

if(h>0)
{
for(y=7;y>=x;y--)
{
PORTB=PORTB|(1<<y);
time_delay(500);
}
h--;
x--;
}

if((h<8)&&(h>0))
{
for(q=7;q>=p;q--)
{
PORTA=PORTA|(1<<q);
time_delay(400);
}
h++;
h--;
p--;
}

}
}


