

function retval = GSS (a, b)
clear all ;
clc;
fprintf('Dame la matriz aumentada\n\n');
f=input('Cuantas filas tiene la matriz: ');
c=input('Cuantas columnas tiene la matriz: '); 
for k=1:c
  for j=1:f
    fprintf('fila : %x\n',j)
    fprintf('columna : %x',k)
    r=input('Numero de esta fila y columna: ');
    a(j,k)=r;
    j=j+1;
  end
  k=k+1;
end
a
pause 
for k=1:c-1
  a(k,:)=a(k,:)/a(k,k);
    for j=k+1:f
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j+1;
    a
    pause
    end
  k=k+1;
  a
  pause

end 
for k=f:-1:2
  for j=k-1:-1:1
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j-1;
    a
    pause
  end
  k=k-1;
  a
  pause
end
fprintf('resultado\n');
endfunction
