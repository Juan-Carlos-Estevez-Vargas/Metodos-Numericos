clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Exponecial caso 1');
disp ('Sea la funcion a^(bx + c) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');



x = linspace (-10, 10, 100);
y = A.^(B*x + C);

plot (x,y);

disp ("El dominio es: (-?, ?)");