%{

Generar 3 Matrices de 4x4. La primera deber ser de Unos, la Segunda
debera contener todos elementos impares y la Tercera sera de todos 
elementos pares. 

Almacenar la Suma de todas las Anteriores en otra Matriz.

Mostrar la ultima matriz por consola y las caracteristicas
de todas

%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola


matriz01 = ones(4);

matriz02 =[1,3,5,7; 9,11,13,15; 1,5,59,11; 3,5,1,7];

matriz03 =[2,4,6,8; 4,12,14,16; 2,8,24,32; 6,2,4,2];

matrizResultado = matriz01 + matriz02 + matriz03;

disp("\n")
disp(matrizResultado)

whos()

