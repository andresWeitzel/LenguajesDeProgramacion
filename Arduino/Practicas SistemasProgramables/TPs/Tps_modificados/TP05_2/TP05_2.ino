
//BLINK1

#include "sistem.h"
#include "display.h"

int cont1=0;
int cont2=0;
int numDisplay=1; //indica que display se enciende 1 unid. 2dec 3 cen

bool estado=0;
bool flag=0;
bool tiempoMultDisp=0;

int latch_p1=0;
int latch_p2=0;
int valor_inicial=100;
int unidad=0;
int decena=0;
int centena=0;

void setup() 
{
  Serial.begin(9600);
  initPorts();
  initTimer2();
}

void loop() 
{

 if (digitalRead(P1)==1 && latch_p1==0)
  {
    
   valor_inicial++;
   latch_p1=1;
  }
 
  
if (digitalRead(P1)==0 && latch_p1==1)
  {
  
   latch_p1=0;
 
   }

if (digitalRead(P2)==1 && latch_p2==0)
  {
    
   valor_inicial--;
   latch_p2=1;
  }
 
  
if (digitalRead(P2)==0 && latch_p2==1)
  {
  
   latch_p2=0;
 
   }


  //animacion led testigo
  if(flag)
  {
    flag=0;
    estado=!estado;
    digitalWrite(AZUL,estado);
    //Serial.println(String(unidad));
  }

  //multip del disp
  if(tiempoMultDisp)
  {
    tiempoMultDisp=0;
    switch(numDisplay)
    {
      case 1:
      {
        showDisplay(unidad,1);
        break;
      }
       case 2:
      {
        showDisplay(decena,2);
        break;
      }
       case 3:
      {
        showDisplay(centena,3);
        break;
      }
    }
    numDisplay++;
    if(numDisplay==4)
    {
      numDisplay=1;
    }
  }
  
  unidad=getUnidad(valor_inicial);
  decena=getDecena(valor_inicial);
  centena=getCentena(valor_inicial);

  

  

  
  /*
  Serial.print(String("Unidad: "));
  Serial.println(String(unidad));
  Serial.print(String("Decena: "));
  Serial.println(String(decena));
  Serial.print(String("Centena: "));
  Serial.println(String(centena));
  */
  
  
}


//*********************************************************
//Vector interrupcion Timer2
//********************************************************
ISR(TIMER2_OVF_vect)
{
  TCNT2=5;
  cont1++;
  cont2++;
  if(cont1==TOSC) 
  {
    cont1=0;
    flag=1;
  }
  if(cont2==TDISP) 
  {
    cont2=0;
    tiempoMultDisp=1;
  }
}
