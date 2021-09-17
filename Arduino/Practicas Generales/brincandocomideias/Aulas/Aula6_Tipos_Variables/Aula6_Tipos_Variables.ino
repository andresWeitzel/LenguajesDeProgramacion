int x;
int y;
int z;

double a,b,c;

void setup() {
Serial.begin(9600);
x= 10;
y= 20;
z= 60;
a=1.2,b=3.17,c=78.98;

Serial.print("La variable 'x' tiene un valor de: ");
Serial.println(x);
Serial.print("La variable 'y' tiene un valor de: ");
Serial.println(y);
Serial.print("La variable 'z' tiene un valor de: ");
Serial.println(z);

Serial.println("---Ahora mismos valores pero en binario---");

Serial.print("La variable 'x' tiene un valor de: ");
Serial.println(x,BIN);
Serial.print("La variable 'y' tiene un valor de: ");
Serial.println(y,BIN);
Serial.print("La variable 'z' tiene un valor de: ");
Serial.println(z,BIN);

Serial.println("---Ahora imprimimos variables tipo Double---");
Serial.print("La variable 'a' tiene un valor de: ");
Serial.println(a);
Serial.print("La variable 'b' tiene un valor de: ");
Serial.println(b);
Serial.print("La variable 'c' tiene un valor de: ");
Serial.println(c);

Serial.println("---Existen multiples variables..String,long,char,etc---");


}

void loop() {

}
