clc
clear all;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 4');
disp ('Sea la funcion (ax + b) / (cx^2 + dx + e) :');

global A B C E F X1 X2 X3 X4 D 

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');
F=D^2-4*C*E;

if (D>=0)
    X1=(-D+F^0.5)/(2*C);
    X2=(-D-F^0.5)/(2*C);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
elseif D==0
    X1=(-D)/(2*C);
    X2=(-D)/(2*C);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
else
    X1=(-D)/(2*C);
    X2=(-D)/(2*C);
    X3=(abs(F))^0.5/(2*C);
    X4=-(abs(F))^0.5/(2*C);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
end

x = linspace (-20, 20, 100);
y = (A*x + B)./(C*x.^2 + D*x + E);

plot (x,y);

disp ("El dominio es: (-?, " + X1 + ") U (" + X1 + ", " + X2 + ") U ("+ X2 + ", ?)");