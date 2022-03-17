clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Logarítmica Caso 3');
disp ('Sea la funcion loga((bx^2 + cx + d) / (ex + f)) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');
F=input('Ingrese el valor de F: ');

x = linspace (-10, 10, 100);

y= log10((B*x.^2 + C*x + D )./(E*x + F))./log10(A);

plot (x,y);


W = -E./D;

disp ("El dominio es: ("+ W + ", ?)")