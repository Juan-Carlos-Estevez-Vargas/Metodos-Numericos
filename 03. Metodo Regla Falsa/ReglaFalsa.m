% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula la raiz de una funci�n en un rango [a, b]
% Para ejecutar el m�todo, debes ejecutar el fichero 'MetodoDeReglaFalsa.m',
% esta es solo una implementaci�n.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = Ecuaci�n o poliniomio a evaluar el cu�l viene suministrado del fichero 
%     principal 'M�todoDeBisecci�n.m'.
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
fprintf('La ra�z se encontr� en el punto: \n\t%fn',vc);
