% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula la raiz de una funci�n en un rango [a, b]
% Para ejecutar el m�todo, debes ejecutar el fichero 'MetodoDelPuntoFijo.m',
% esta es solo una implementaci�n.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% x0 = Primera aproximaci�n a la raiz; esto viene dado del m�todo principal. 
% es = Error permitido (punto de corte del m�todo). Viene dado del m�todo 
%      principal.
% imax = M�ximo de iteraciones. Viene dado del m�todo principal.
% gx = Funci�n despejada donde converge la soluci�n, tambi�n viene del m�todo
%      principal.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% xr = Raiz encontrada por el m�todo.
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