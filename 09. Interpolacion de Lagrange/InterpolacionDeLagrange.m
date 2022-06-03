% Realiza la interpolaci�n polin�mica de Lagrange para una serie de puntos
% suministrados por el usuario como tabla de valores.
function InterpolacionDeLagrange()
y = [];
x = [];
C = [];
num = input('Introduzca la cantidad de puntos: ');

disp ('A continuaci�n, ingrese los valor de x')
for i=1:num
    a = input('Ingrese un valor n�merico ');
    x = [x, a];
end

disp ('A continuaci�n, ingrese los valor de y')
for i=1:num
    a = input('Ingrese un valor n�merico ');
    y = [y, a];
end

plot(x,y,'linestyle','none','marker','o');
hold on;
grid on;

n1=num;
n=n1-1;
L=zeros(n1,n1);

for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j;
            V=conv(V,poly(x(j)))/(x(k)-x(j));
        end
    end
    L(k,:)=V;
end

C=y*L