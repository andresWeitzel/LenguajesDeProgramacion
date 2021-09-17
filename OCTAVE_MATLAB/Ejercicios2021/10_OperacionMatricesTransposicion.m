%{
Recordar que la transpuesta de algo es el intercambio de 
filas por columnas o viceversa

Realizar la transpuesta de la matriz m=[1,2,3,4;5,6,7,8] y mostrar
solo el tamaño de cada una.

%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola


m=[1,2,3,4;5,6,7,8];

matrizTranspuesta=m';


disp("\n--Matriz Dada--");
disp(m);
disp("\nTamaño:");
size(m)

disp("\n--Matriz Transpuesta--");
dis
p(matrizTranspuesta);
disp("\nTamaño:");
size(matrizTranspuesta)
