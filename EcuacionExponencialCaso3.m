function EcuacionExponencialCaso3()
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Exponencial Caso 3');
disp ('Sea la funcion a^((bx^2 + cx + d) / (ex + f)) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');
F=input('Ingrese el valor de F: ');

x = linspace (-20, 1, 50);

y= A.^((B*x.^2 + C*x + D )./(E*x + F));

plot (x,y);

W = -F./E;

disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)")