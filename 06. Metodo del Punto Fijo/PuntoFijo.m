% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula la raiz de una función en un rango [a, b]
% Para ejecutar el método, debes ejecutar el fichero 'MetodoDelPuntoFijo.m',
% esta es solo una implementación.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% x0 = Primera aproximación a la raiz; esto viene dado del método principal. 
% es = Error permitido (punto de corte del método). Viene dado del método 
%      principal.
% imax = Máximo de iteraciones. Viene dado del método principal.
% gx = Función despejada donde converge la solución, también viene del método
%      principal.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% xr = Raiz encontrada por el método.
% -----------------------------------------------------------------------

function PuntoFijo(x0, es, imax, gx)
xr = x0;
iter = 0;
g = inline(gx);
do = 0;
while (do == 0)
    xrold = xr;
    xr = g(xrold);
    iter = iter + 1;
    if (xr ~= 0)
        ea = abs((xr - xrold)/xr)*100;
    end
    if ((ea < es) || (iter >= imax))
        break;
    end
end
disp('Resultado')
xr    