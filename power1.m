function [lambda,V]=potencia(A,x,epsilon,max1)
% Input A: una matrix nxn
% x: aproximacion inicial para el autovector
% epsilon: tolerancia
% max1: numero maximo de iteraciones
%
% Output lambda: el autovalor dominante
% V: el autovalor dominante
%
lambda=0;
cnt=0;
err=1;
estado=1;
  while((cnt<=max1)&(estado==1))
  y=A*x;
  [m,j]=max(abs(y));
  c1=m;
  y=y/c1;
  % test de los errores
  dc=abs(lambda-c1);
  dv=norm(x-y);
  err=max(dc,dv);
  x=y;
  lambda=c1;
  estado=0;
  if (err>epsilon)
    estado=1;
  end
  cnt=cnt+1;
  end
v=x;
