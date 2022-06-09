% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula el valor de una integral definida mediante el m�todo del
% trapecio.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = La funci�n de tipo f(x); ejemplo 5*x-4*x^5.
% b = L�mite superior de la integral; ejemplo 3.
% a = L�mite inferior de la integral: ejemplo 1.
% n = N�mero de intervalos; ejemplo 15.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% s = C�lculo del �rea aproximada de la integral definida en el n�mero de 
%     intervalos ingresados.
% -----------------------------------------------------------------------

clc;

fprintf('\t\tCALCULO DEL AREA POR EL METODO DE TRAPECIO\n');
f=input('ingrese la funcion \n f(x)=','s');
b=input('ingrese el limite superior de la integral\n�');
a=input('ingrese el limite inferior de la integral\n');
n=input('ingrese el numero de intervalos\n');

h=(b-a)/n; 
g=inline(f);
s=0;

for i=1:n
    s=h/2*(g(a+(i-1)*h)+g(a+(i)*h))+s;
    fprintf('El area aproximada es: %10.5f\n\n',s);
end