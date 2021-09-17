#define S1 2

#define ledA 10
#define ledB 9
#define ledC 6
#define ledD 7
#define ledE 8
#define ledF 11
#define ledG 12
#define ledPD 5 //Punto Decimal

int numero = 10;
boolean est1 = false;
boolean est2 = false;

void setup() {
  pinMode(S1, INPUT);

  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  pinMode(ledD, OUTPUT);
  pinMode(ledE, OUTPUT);
  pinMode(ledF, OUTPUT);
  pinMode(ledG, OUTPUT);
  pinMode(ledPD, OUTPUT);

}

void loop() {

  est2 = digitalRead(S1);

  if (est2 && !est1) {

    numero += 1;

    if (numero > 4) {
      numero = 0;
    }

  }
  est1 = est2;



  switch (numero) {
    case 0:
      digitalWrite(ledA, HIGH);
      digitalWrite(ledB, HIGH);
      digitalWrite(ledC, HIGH);
      digitalWrite(ledD, HIGH);
      digitalWrite(ledE, HIGH);
      digitalWrite(ledF, HIGH);
      digitalWrite(ledG, LOW);
      digitalWrite(ledPD, LOW);
      break;
    case 1:
      digitalWrite(ledA, LOW);
      digitalWrite(ledB, HIGH);
      digitalWrite(ledC, HIGH);
      digitalWrite(ledD, LOW);
      digitalWrite(ledE, LOW);
      digitalWrite(ledF, LOW);
      digitalWrite(ledG, LOW);
      digitalWrite(ledPD, LOW);

      break;
    case 2:
      digitalWrite(ledA, HIGH);
      digitalWrite(ledB, HIGH);
      digitalWrite(ledC, LOW);
      digitalWrite(ledD, HIGH);
      digitalWrite(ledE, HIGH);
      digitalWrite(ledF, LOW);
      digitalWrite(ledG, HIGH);
      digitalWrite(ledPD, LOW);
      break;
    case 3:
      digitalWrite(ledA, HIGH);
      digitalWrite(ledB, HIGH);
      digitalWrite(ledC, HIGH);
      digitalWrite(ledD, HIGH);
      digitalWrite(ledE, LOW);
      digitalWrite(ledF, LOW);
      digitalWrite(ledG, HIGH);
      digitalWrite(ledPD, LOW);

      break;
    case 4:
      digitalWrite(ledA, LOW);
      digitalWrite(ledB, HIGH);
      digitalWrite(ledC, HIGH);
      digitalWrite(ledD, LOW);
      digitalWrite(ledE, LOW);
      digitalWrite(ledF, HIGH);
      digitalWrite(ledG, HIGH);
      digitalWrite(ledPD, LOW);

      break;

    default://Si la variable numero no tuviera ningun case ejecuto este default
      digitalWrite(ledA, LOW);
      digitalWrite(ledB, LOW);
      digitalWrite(ledC, LOW);
      digitalWrite(ledD, LOW);
      digitalWrite(ledE, LOW);
      digitalWrite(ledF, LOW);
      digitalWrite(ledG, LOW);
      digitalWrite(ledPD, HIGH);


      break;


  }
}
