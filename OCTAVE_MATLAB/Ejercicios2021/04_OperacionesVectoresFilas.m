%{
Realice 4 Operaciones Aritmeticas cualesquiera, cada una 
se almacena en 1 variable, de las variables creadas, 2 se
almacenaran en 1 Vector fila, y las otras 2 en el otro Vector
Fila.

Crear otro vector y realizar la resta de los 2 vectores 
anteriores sobre este.

Mostrar el resultado y todas las caracteristicas por consola
%}


clear all   %limpiamos variables viejas
close all   %graficos, ventanas abiertas
clc         %eliminamos lo que hay en consola

operacion01=345-348;
operacion02=387234-239478;
operacion03=909+23;
operacion04=33*9;

vector01=[operacion01,operacion02];
vector02=[operacion03,operacion04];

vector03=[];
vector03=vector01-vector02;

disp(vector03)

whos()
