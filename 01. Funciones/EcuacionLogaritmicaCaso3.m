% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el dominio y rango de una función logaritmica de tipo 
% loga(bx^2 + cx + d) / (ex + f)
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% A, B, C, D, E, F = Coeficientes que pertenecen a la ecuación.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la función.
% -----------------------------------------------------------------------

function EcuacionLogaritmicaCaso3()

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Logarítmica Caso 3');
disp ('Sea la funcion loga(bx^2 + cx + d) / (ex + f) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');
F=input('Ingrese el valor de F: ');
G=C^2-4*B*D;

if (G>=0)
    X1=(-C+G^0.5)/(2*B);
    X2=(-C-G^0.5)/(2*B);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
elseif G==0
    X1=(-C)/(2*B);
    X2=(-C)/(2*B);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
else
    X1=(-C)/(2*B);
    X2=(-C)/(2*B);
    X3=(abs(G))^0.5/(2*B);
    X4=-(abs(G))^0.5/(2*B);
    fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
    fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
end


x = linspace (-20, 20, 50);
y = log10((B*x.^2 + C*x + D)./(E*x + F))./log10(A);

plot (x,y);

W = -E./D;

disp ("El dominio es: (-" + X1 + ", " + W + ") U ("+ X2 + ", ?)")