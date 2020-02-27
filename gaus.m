function retval = gaus (a)
  [h r] = size(a);
  m=eye(h);
  for k=1:(h-1)
    for i=(k+1):h
      m(i,k)=a(i,k)/a(k,k);
      for j=i:h
        a(i,j)=-m(i,k)*a(k,j)+a(i,j);
        a(i,k)=0;
      end
    end
  end
  m

endfunction