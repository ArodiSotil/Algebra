function minimosCuadrados(x,y,n)
  Sx = 0;
  Sy = 0;
  Sx2 = 0;
  Sxy = 0;
  for i=1:n
    Sx = Sx + x(i);
    Sy = Sy + y(i);
    Sx2 = Sx2 + x(i)*x(i);
    Sxy = Sxy + x(i) * y(i);
  end
  
  B =[Sx n Sy; Sx2 Sx Sxy]
  A = rref([Sx n Sy; Sx2 Sx Sxy])
 M = A(1,3)
 B = A(2,3)
 