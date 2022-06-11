% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 11/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Resuelve sistemas de ecuaciones por el método de Gauss-Seidel.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% A = Matriz a operar; ejemplo [1 10 4 -2;8  0 -10 2;8 3 1 17;11 7 -3 2]
% b = Vector columna Solución; ejemplo [2 ;-7 ;8 ;12];
% tol = Tolerancia o error máximo permitido; ejemplo 0.001
% imax = Número máximo de iteraciones permitidas; ejemplo 300
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Tabla con las iteraciones realizadas y sus respectivos valores.
% -----------------------------------------------------------------------

function x=gauss_seidel(A,b,tol,imax)
n=max(size(A));         % Obtenemos de la matriz A
                        % el número de ecuaiones
                        % y por ende de incognitas.
c=diag(A);              % Almacenamos en 'c' los elementos
                        % de la diagonal principal.
d=1;
i=1;
while (d~=0)&&(i<n)     % revisamos si en la diagonal principal 'c'
    d=c(i,1)*c(i+1,1);  % existe algún elemento igual a 0.
    i=i+1;              % En caso de que lo haya
end                     % salir del bucle y d=0.

while d==0              % Si se ha detectado algún cero en la
    B(1,:)=A(n,:);      % diagonal principal se entra en este bucle
    U(1,1)=b(n,1);      % para así cambiar las filas. Se alternarán
    for i=2:n           % las filas hasta que todos los elementos
        B(i,:)=A(i-1,:);% de la diagonal principal
        U(i,1)=b(i-1,1);% sean distintos de cero.
    end                 % Todo esto para evitar una división
    A=B;                % por cero. Aunque se recomienda
    b=U;                % siempre ordenar las ecuaciones apriori.
    c=diag(A);
    d=1;i=1;
    while (d~=0)&&(i<n)
        d=c(i,1)*c(i+1,1);
        i=i+1;
    end
end

% Se selecciona un vector X(n,1) sólo para evaluar
% el error en la primera iteración.
for i=1:n
    X(i,1)=b(i,1)/A(i,i);
end

% se sespecifica el vector x(n,1) con valores iguales a cero
% para iniciar las iteraciones.
x=zeros(n,1);

err=tol+1;
iter=1;

% Se inician las iteraciones
while (tol<err)&&(iter<imax)
    for i=1:n
        if i==1
            sum=0;
            for j=i+1:n
                sum=A(i,j)*x(j,1)+sum;
            end
            x(i,1)=(b(i,1)-sum)/A(i,i);
        end
        if i==n
            sum=0;
            for j=i-1:-1:1
                sum=A(i,j)*x(j,1)+sum;
            end
            x(i,1)=(b(i,1)-sum)/A(i,i);
        end
        if 2<=i<=n-1
            sum1=0;
            for j=i+1:n
                sum1=A(i,j)*x(j,1)+sum1;
            end
            sum2=0;
            for j=i-1:-1:1
                sum2=A(i,j)*x(j,1)+sum2;
            end
            x(i,1)=(b(i,1)-sum1-sum2)/A(i,i);
        end
    end
    err=abs((x-X)./x);
    err=max(err);
    X=x;
    iter=iter+1;
end