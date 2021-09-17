import math

print("---------Programa de calculo de raiz cuadrada--------------")

numero=int(input("Introduce un num por favor: "))
intentos=0

while numero<0:
    print("No se puede hallar la raiz de un num negativo")

    if intentos==2:
        print("Lo has intentado dos veces.El programa ha finalizado")
        break;      #Sale del bucle if y continua con la lectura

    numero = int(input("Introduce un num por favor: "))
    if numero<0:
        intentos+=1

if intentos<2:
    solucion=math.sqrt(numero)#math nos da la raiz cuadrada y sqrt almacena el numero en la solucion
    print("la raiz cuadrada de "+str(numero)+" es "+str(solucion))