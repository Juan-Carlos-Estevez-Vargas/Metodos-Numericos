function EcuacionExponencialCaso4()
clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 4');
disp ('Sea la funcion A^((Bx + C) / (Dx^2 + Ex + F)) :');

global A B C E F X1 X2 X3 X4 D 

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');
F=input('Ingrese el valor de F: ');
G=E^2-4*D*F;

if (E>=0)
    X1=(-E+G^0.5)/(2*D);
    X2=(-E-G^0.5)/(2*D);
    fprintf('La primera soluci�n de la ecuaci�n cuadratica es %2.2f\n',X1);
    fprintf('La segunda soluci�n de la ecuaci�n cuadratica es %2.2f\n',X2);
elseif E==0
    X1=(-E)/(2*D);
    X2=(-E)/(2*D);
    fprintf('La primera soluci�n de la ecuaci�n cuadratica es %2.2f\n',X1);
    fprintf('La segunda soluci�n de la ecuaci�n cuadratica es %2.2f\n',X2);
else
    X1=(-E)/(2*D);
    X2=(-E)/(2*D);
    X3=(abs(G))^0.5/(2*D);
    X4=-(abs(G))^0.5/(2*D);
    fprintf('La primera soluci�n de la ecuaci�n cuadratica es %2.2f + %2.2f i\n',X1,X3);
    fprintf('La segunda soluci�n de la ecuaci�n cuadratica es %2.2f + %2.2f i\n',X2,X4);
end

x = linspace (-20, 20, 50);
y = A.^((B*x + C)./(D*x.^2 + E*x + F));

plot (x,y);

disp ("El dominio es: (-?, " + X1 + ") U (" + X1 + ", " + X2 + ") U ("+ X2 + ", ?)");