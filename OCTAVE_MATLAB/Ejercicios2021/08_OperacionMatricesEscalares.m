%{
===========Inciso 01==============

Generar 2 Matrices de 4x4 con elementos de tipo entero y float

Se debera multiplicar la primera matriz con un escalar cualquiera
y la segunda matriz con otro escalar cualquiera.

El resultado cada matriz se debera almacenar por separado en 
variables separadas

Mostrar las matrices por consola y las caracteristicas
de todas las variables

===========Inciso 02==============

Generar 2 Matrices de 8x8 y multiplicarlas entre si.

Generar una matriz resultante que almacena dicha operacion anterior.

Mostrar todas las caracteristicas del programa.

(Notar que si se multiplica 2 matrices, la operacion no sera la misma que
la de multiplicar por un escalar, no sera valido el operador '*' , por que
no es un producto matricial, se usa '.*' para la operacion elemento a elemento )
%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola


%=================INCISO 01======================

vectorEnteros = int16( [1,3,5,7; 2,4,6,8 ] );

vectorFloats = [ 2,4,6,8; 4,12,14,16 ];

escalar01=12;

escalar02=222;


%Notar que la mitad de la matriz son enteros y la otra mitad son float, pero
%la matriz resultante sera entera ya que esta condicionada por un vector entero
matriz01 = [ vectorEnteros ; vectorFloats ] * escalar01 ;

matriz02 =[ vectorFloats ; vectorEnteros ] * escalar02 ;

disp("\n--Matriz 01--");
disp(matriz01)

disp("\n--Matriz 02--");
disp(matriz02)

disp("\n--Caracteristicas--");
whos()


%=================INCISO 02======================

m=ones(8)*3; % 8x8 de valores 3
n=ones(8)*5; % 8x8 de valores 5

matrizResultante=[m .* n]; % 8x8 de valores 15

disp("\n--Matriz Resultante--");
disp(matrizResultante)


disp("\n--Caracteristicas--");
whos()
