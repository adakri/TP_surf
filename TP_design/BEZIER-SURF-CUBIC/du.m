## Copyright (C) 2021 abdel_Dakri
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} du (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: abdel_Dakri <abdel_dakri@HP>
## Created: 2021-10-12

function  derivative = du(B, u, v)
  % Compute the derivative in a 16 point patch in points of vectors u and v where size(u)=size(v)
  % we need the values of bezier coefficients
    derivative = 0;
    Bezier_n = Bernstein(u);
    Bezier_m = Bernstein(v);
    for  i=1:3
      for j=1:4
        derivative += (B(i+1,j,:) - B(i,j,:)) * Bezier_n(i) * Bezier_m(j);
      endfor
    endfor
    
    derivative *= 4;
    %derivative
endfunction
