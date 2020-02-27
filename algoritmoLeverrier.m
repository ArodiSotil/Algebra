## Copyright (C) 2019 ArOdI
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} algoritmoLeverrier (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ArOdI <arodi@arodi-Lenovo-G400s>
## Created: 2019-12-05

function [V D]=algoritmoLeverrier(A)
    poli=polinomio(A);
    n=length(A);
    raiz=roots(poli);
    B=zeros(n);
    C=-1.*A(2:n,1); 
    D=diag(raiz); 
    V=zeros(n);
    S=zeros(n,1); 
    for i=1:length(D)
        B=A(2:n,2:n)-D(i,i)*eye(n-1);
        S=[1 (B\C)'];
        V(1:n,i)=S/norm(S);
    endfor
endfunction
