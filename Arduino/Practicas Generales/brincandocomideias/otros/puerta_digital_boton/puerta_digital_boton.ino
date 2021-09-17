void setup() {
  
  pinMode(2,INPUT);
  //pinMode(2,INPUT_PULLUP);en este caso es para usar el resistor interno de arduino
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  //t1=200; Variables para delays
  //t2=300;
  
}

void loop() {

  int Boton1=digitalRead(2);//Creamos una variable en la cual guardamos el estado del boton
  
  digitalWrite(3,Boton1);//si Boton1 esta conectado prende
  digitalWrite(4,!Boton1);//la exclamaion invierte el valor de Boton1

}
