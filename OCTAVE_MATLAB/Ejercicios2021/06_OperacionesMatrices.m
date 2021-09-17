%{

Generar 2 Matrices de Unos 4x4.

Almacenar la Suma de las Anteriores en otra Matriz

Mostrar la ultima matriz por consola y las caracteristicas
de todas

%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola


matriz01 = ones(4);
matriz02 = ones(4);

matrizResultado = [matriz01 + matriz02];

disp("\n")
disp(matrizResultado)

whos()

