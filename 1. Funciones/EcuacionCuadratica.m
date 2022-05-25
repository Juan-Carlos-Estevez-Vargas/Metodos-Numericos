function EcuacionCuadratica
clear all;
clc;

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion cuadratica');
disp ('Sea la funcion ax^2 + bx + c :');

global A B C X1 X2 X3 X4 D %#ok<GVMIS> 

disp('Ecuación de segundo grado A*X^2+B*X+C=0')
A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=B^2-4*A*C;

if (D>=0)
    X1=(-B+D^0.5)/(2*A);
    X2=(-B-D^0.5)/(2*A);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
elseif D==0
    X1=(-B)/(2*A);
    X2=(-B)/(2*A);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
else
    X1=(-B)/(2*A);
    X2=(-B)/(2*A);
    X3=(abs(D))^0.5/(2*A);
    X4=-(abs(D))^0.5/(2*A);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
end

x = -50:0.01:50;
y= A*x.^2 + B*x + C;

plot (x,y);

disp ('El rango es: (-?, ?)');
disp ('El dominio es: (-?, ?)');