% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Encuentra el resultado de una integral definida por medio de trapecios.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = La función de tipo f(x); ejemplo 5*x^3.
% b = Límite superior de la integral; ejemplo 5.
% a = Límite inferior de la integral; ejemplo 0.
% n = número de intervalor; ejemplo 10.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% I = Cálculo del área aproximada de la integral definida.
% -----------------------------------------------------------------------

clc

fprintf('\t\tCALCULO DEL AREA POR EL METODO DE SiIMPSON 1/3\n');
f=input('ingrese la funcion \n f(x)=','s');
b=input('ingrese el limite superior de la integral´ ');
a=input('ingrese el limite inferior de la integral  ');
n=input('ingrese el numero de intervalos  ');

h = (b-a)/n;
x=a;
p=eval(f);
x=b;
q=eval(f);
s1=0;

for i=2:n
    x=a+(i-1)*h;
    y=eval(f);
    s1=s1+y;
end
s2=0;
for i=1:n
    x=a+(2*i-1)*(h/2);
    y=eval(f);
    s2=s2+y;
end

I=(h/6)*(p+2*s1+4*s2+q);
fprintf('El area aproximada es: %10.5f\n\n',I);