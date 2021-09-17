%{

Generar 2 Vectores Fila. El primero tendra 200 elementos y el 
segundo tambien tendra 200 elementos hasta un valor maximo
numerico de 100.

Cada uno de los vectores anteriores se deberan multiplicar por
1 escalar cualquiera y los resultados almacenar en variables
separadas

Las variables anteriores se deberan almacenar como
matriz

Mostrar la matriz por consola y las caracteristicas
de todas las variables

%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola


%El rango tiene que empezar en 1 para que no cuente el cero
vectorFila01=[1:200];

%Recordar esta funcion..linspace(inicio,fin,elementos)
%Esta funcion cuenta toma 200 elementos, no cuenta el cero
vectorFila02=linspace(0,100,200);

escalar01=333;
escalar02=847;

productoVectorFila01 = vectorFila01 * escalar01;
productoVectorFila02 = vectorFila02 * escalar02;


matrizResultante = [productoVectorFila01 ; productoVectorFila02];


disp("\n--Matriz Resultante--");
disp(matrizResultante);

disp("\n--Caracteristicas--");

whos()

