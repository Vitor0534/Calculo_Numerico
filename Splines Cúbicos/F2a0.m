## Copyright (C) 2018 Vitor
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
## @deftypefn {} {@var{retval} =} F2a0 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Vitor <Vitor@VITOR-PC>
## Created: 2018-09-29

function retval = F2a0 (x)
         if (x>=-2 && x<=0)
         retval=e^x;
       elseif (x>=0 && x<=4)
         retval=x*sin(5*x)+1;
       else
         retval=0;
       endif   
endfunction
