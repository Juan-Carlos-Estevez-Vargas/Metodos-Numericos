function EcuacionRacionalCaso1
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 1');
disp ('Sea la funcion a / bx + c :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');


x = linspace (-25, 25, 50);
y= A./ (B*x + C);

plot (x,y);

Z = -C./B;

disp ("El dominio es: (-?, " + Z + ") U ("+ Z + ", ?)");