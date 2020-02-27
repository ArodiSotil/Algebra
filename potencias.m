## Copyright (C) 2019 IdOrA
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} potencias (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: IdOrA <IdOrA@ARODI>
## Created: 2019-11-28

function [lambda,V] = potencias (A , x , epsilon , max1 )
  lambda=0;
  cnt=0;
  err=1;
  estado=1;
  while((cnt <= 1)&&(estado==1))
    y=A*x;
    [m,j]=max(abs(y));
    c1=m;
    y=y/c1;
    dc=abs(lambda-c1);
    dv=norm(x-y);
    err=max(dc,dv);
    x=y;
    lambda=c1;
    estado=0;
    if (err>epsilon)
      estado=1;
    endif
    cnt=cnt+1;
  endwhile
  V=x;
endfunction
