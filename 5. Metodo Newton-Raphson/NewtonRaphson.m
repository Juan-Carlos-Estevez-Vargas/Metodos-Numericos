function NewtonRaphson(x0)
syms x;
f = input('ingrese nuevamente la funci�n ');
df = diff(f);
disp(df);
n = input('Digite el n�mero de ieraciones ');
tol = input('Ingrese la tolerancia ');

for k=1: n
    x1 = x0 - subs(f, x0)/subs(df, x0);
    if(abs(x1 - x0) < tol)
        fprintf('\nx%d=%f es un aproximaci�n de una ra�z\n', k, x1);
        disp('\n')
        return 
    end
    fprintf('x%d=%f\n', k, x1); 
    x0 = x1;
end
