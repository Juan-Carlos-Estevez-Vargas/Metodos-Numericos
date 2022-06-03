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