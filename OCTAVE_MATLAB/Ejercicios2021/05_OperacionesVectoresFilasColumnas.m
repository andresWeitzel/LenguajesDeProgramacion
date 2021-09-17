%{
Generar un Vector Fila que contenga 4 elementos, todos numeros pares
Generar un Vector Columna que contenga 4 elementos, todos numeros impares

En otro Array de tipo Matriz  realizar la suma de los vectores
anteriores y mostrar por consola el resultado y sus caracteristicas

Luego crear otra matriz y pasar todos los valores de la 
anterior a la nueva matriz, con la diferencia que la nueva
tendra todos sus elementos de tipo entero, realizar la conversion.
Mostrar por consola el resultado y sus caracteristicas.
 
%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola

vectorFila=[2,4,6,8];
vectorColumna=[1;5;7;9];

matrizResultado=[vectorFila + vectorColumna];

disp("\n")
disp(matrizResultado)

whos()


matrizResultadoEnteros=int64(matrizResultado);

disp("\n")
disp(matrizResultadoEnteros)

whos()
