 function x = gauss(A,b) 
  %A*x=b 
  n = length(b) 
  x = zeros(n,1) 
  for j = 1:n-1 
    for i = j+1:n 
      if A(i,j) != 0 
        lambda = A(i,j)/A(j,j); 
        A(i,j+1:n) = A(i,j+1:n) - lambda*A(j,j+1:n); b(i)= b(i) - lambda*b(j); 
      end 
     end 
    end 
    for i = n:-1:1 
      x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i); 
    end 
end 