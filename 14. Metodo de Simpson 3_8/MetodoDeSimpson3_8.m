% Calcula el valor aproximado de una integral definida mediante el método
% de simpson simple 3/8.

function MetodoDeSimpson3_8()
f=input('ingrese la funcion \n f(x)=','s');
b=input('ingrese el limite superior de la integral´ ');
a=input('ingrese el limite inferior de la integral  ');
f = inline(f);
h = (b-a)/3;
STO = (3/8)*h*(f(a)+3*f(a+h)+3*f(a+(2*h))+f(b));
fprintf('El area aproximada es: %10.2f\n\n',STO);
end