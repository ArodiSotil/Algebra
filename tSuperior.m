function tSuperior(a,b)
  [m n]=size(a);
  x(n)=b(n)/a(n,n);
  for i=(n-1):-1:1
    s=b(i);
    for k=i+1:n;
      s=s-a(i,k)*x(k);
    end
    x(i)=s/a(i,i);
  end
  x
endfunction