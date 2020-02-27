function [lambda,V] = invpow (A,X,alpha,epsilon,max1)
  [n n]=size(A);
  A=A-alpha*eye(n)
  lambda=0;
  cnt=0;
  err=0;
  state=1;
  [L,U,P]=lu(A);
  while ((cnt<=max1)&&(state==1))
    Y=L\(P*X);
    Y=U\Y;
    [m j]=max(abs(Y));
    c1=m;
    dc=abs(lambda-c1);
    Y=(1/c1)*Y;
    dv=norm(X-Y);
    err=max(dc,dv);
    X=Y;
    lambda=c1;
    state=0;
    if(err>epsilon)
      state=1;
    endif
    cnt=cnt+1
  endwhile
  V=X
endfunction
