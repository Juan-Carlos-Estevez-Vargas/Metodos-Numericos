% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula la raiz de una función en un rango [a, b]
% Para ejecutar el método, debes ejecutar el fichero 'MetodoDeReglaFalsa.m',
% esta es solo una implementación.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = Ecuación o poliniomio a evaluar el cuál viene suministrado del fichero 
%     principal 'MétodoDeBisección.m'.
% xa = Inicio del intervalo.
% xb = Fin del intervalo.
% T = Valor del error permitido: ejemplo 0.0001.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% vc = Raiz encontrada en el intervalo suministrado.
% -----------------------------------------------------------------------

function ReglaFalsa(f, xa, xb)
f = inline(f);
T = input('Ingrese el valor de la tolerancia  ');
vc = 0; ite = 0.0000; error = 100;
fprintf('\t iter \t\txa \t\t vc \t\t xb \terror\n');

while error > T
    vc = (xa*f(xb)-xb*f(xa))/(f(xb)-f(xa));
    disp([ite,xa,vc,xb,error]);
    if f(xa)*f(vc)<0
        xb = vc;
    else 
        xa = vc;
    end
    error = abs(f(vc));
    ite = ite+1;
end
fprintf('La raíz se encontró en el punto: \n\t%fn',vc);
