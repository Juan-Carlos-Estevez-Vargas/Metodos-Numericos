function EcuacionRacionalCaso3()
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 3');
disp ('Sea la funcion (ax^2 + bx + c) / (dx + e) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');

x = linspace (-20, 20, 50);

y= (A*x.^2 + B*x + C )./(D*x + E);

plot (x,y);


W = -E./D;

disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)")