clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Exponecial caso 1');
disp ('Sea la funcion a^(bx + c) / dx + e :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');


x = linspace (-10, 10, 100);
y = A.^((B*x + C)./(D*x + E));

W = -E./D;
plot (x,y);

disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)");