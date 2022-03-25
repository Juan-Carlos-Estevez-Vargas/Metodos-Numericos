function FuncionRadicalCaso1()
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Radical');
disp ('Sea la funcion sqrt(ax + b) :');

a = input ('Ingrese el valor de a   ');
b = input ('Ingrese el valor de b   ');

x = -50:0.01:50;
y= sqrt(a*x + b);
w = -b./a;
plot (x,y);

disp ("El dominio es: [," + w + " ?)");