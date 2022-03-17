function EcuacionLogaritmicaCaso2()
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Logarítmica caso 1');
disp ('Sea la funcion loga((bx + c) / dx + e) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');


x = linspace (-10, 10, 100);
y = log10((B*x + C)./(D*x + E))./log10(A);

W = -E./D;
plot (x,y);

disp ("El dominio es: (?, " + -W  + ") U ("+ W + ", ?)");