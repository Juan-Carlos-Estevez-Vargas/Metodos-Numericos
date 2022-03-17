clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 2');
disp ('Sea la funcion (ax + b) / (cx + d) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');

x = linspace (-10, 10, 100);
y= (A*x + B)./(C*x + D);

plot (x,y);

W = -D./C;

disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)");