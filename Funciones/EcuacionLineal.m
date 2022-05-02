function EcuacionLineal()

clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion lineal');
disp ('Sea la funcion ax + b :');

a = input ('Ingrese el valor de a   ');
b = input ('Ingrese el valor de b   ');

x = -50:0.01:50;
y = a*x + b;

plot (x,y);


disp ('El dominio es: (-?, ?)');