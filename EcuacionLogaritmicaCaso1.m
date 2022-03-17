function EcuacionLogaritmicaCaso1()
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Logarítmica Caso 1');
disp ('Sea la funcion loga(bx + c) :');

a = input ('Ingrese el valor de a   ');
b = input ('Ingrese el valor de b   ');
c = input ('Ingrese el valor de c   ');

x = linspace (-20, 20, 50);
y = log10(b*x + c)./log10(a);

z = -c./b;

plot (x,y);

disp ("El dominio es: (" + z + ", ?)");