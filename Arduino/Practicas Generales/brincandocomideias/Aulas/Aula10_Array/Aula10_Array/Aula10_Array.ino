#define S1 2

int numero = 10;
boolean est1 = false;
boolean est2 = false;

//Crearemos una array para facilitar las tareas de las declaraciones de los diferentes leds
//8 elementos del array, cada uno corresponde a la saida de los leds del 7 segmentos
byte leds[8] = {10, 9, 6, 7, 8, 11, 12, 5};

//Crearemos un array para los diferentes numeros
//Cada posicion guarda la configuracion de un numero, y cada posicion de los 11 elementos del array(9 numeros,cero y todo apagado)
//posee otros 8 elementos(7 leds y punto decimal) que seran los numeros
byte numerosConfig[11][8]
{
  {1,1,1,1,1,1,0,0},//0
  {0,1,1,0,0,0,0,0},//1
  {1,1,0,1,1,0,1,0},//2
  {1,1,1,1,0,0,1,0},//3
  {0,1,1,0,0,1,1,0},//4
  {1,0,1,1,0,1,1,0},//5
  {1,0,1,1,1,1,1,0},//6
  {1,1,1,0,0,0,0,0},//7
  {1,1,1,1,1,1,1,0},//8
  {1,1,1,1,0,1,1,0},//9
  {0,0,0,0,0,0,0,0},//Todo apagado

};


void setup() {
  pinMode(S1, INPUT);

  //Con el bucle for indicamos como salida los leds del 7 segmentos del array
  for (int l = 0; l <= 7; l++) {

    pinMode(leds[l], OUTPUT);
  }

}

void loop() {

  est2 = digitalRead(S1);

  if (est2 && !est1) {

    numero += 1;

    if (numero > 9) {
      numero = 0;
    }

  }
  est1 = est2;

//Creamos el for para que nos muestre los 10 numeros(0 al 9) en el 7 segmentos
//Al array leds le pasamos la cantidad n(7 leds) con el array numerosConfig(10 numeros a mostrar dependiendo de que led este encendido).

  for( int n=0; n <=7; n++){
    
    digitalWrite(leds[n], numerosConfig[numero][n]);
    
  }

}
