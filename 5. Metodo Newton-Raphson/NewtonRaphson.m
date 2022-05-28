function NewtonRaphson
syms x;
f = input('Digite la función deseada ');
df = diff(f);
x0 = input('Digite el valor inicial ');
n = input('Digite el número de ieraciones ');
tol = input('Ingrese la tolerancia ');

for k=1: n
    x1 = x0 - subs(f, x0)/subs(df, x0);
    if(abs(x1 - x0) < tol)
        fprintf('x%d=%f es un aproximación de una raíz\n', k, x1);
        return 
    end
    fprintf('x%d=%f\n', k, x1);
    x0 = x1;
end
