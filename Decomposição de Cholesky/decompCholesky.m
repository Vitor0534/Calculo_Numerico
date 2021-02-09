%Decomposição de cholesky
%AX=B
%L*L`=A  decomposição de cholesky, após isso resolver como LU
% LY=B, UX=Y  dai encontra o X 
%transpose(x) retorna a matriz transposta de x
A= [ 9 6 -3 3 ; 6 20 2 22 ; -3 2 6 2 ; 3 22 2 28 ]% matriz do poroblema
L=0; %Matriz que recebera a decomposição
B=[ 12;  64; 4 ; 82] % vetor solução

for i=1: 4
 
  for k=1: 4
    
    if (i==k)
      resSoma=0;
      for j=1: k-1
        resSoma+=(L(k,j))^2;
      endfor
      L(k,k)=sqrt(A(k,k)-resSoma);
      
    elseif(i<k)
      resSoma=0;
      for j=1: i-1
        resSoma+=L(i,j)*L(k,j);
      endfor
      L(k,i)=( A(k,i)-resSoma)/L(i,i);
    endif
    
  endfor
endfor

% resolvendo similarmente ao metodo LU temos que
%Ax=b => L*L´*x=B
%l`x=y => Ly=B => y=B/L
%L`x=y => x=y/L` 

%realizando as multiplicações
y=[0;0;0;0];
G=inv(L);
for i=1:4
  y(i,1)=0;
  for j=1:4
    y(i,1)+=G(i,j)*B(j,1);
  endfor
endfor

x=[0;0;0;0]
G=inv(transpose(L))
for i=1:4
  for j=1:4
    x(i,1)+=G(i,j)*y(j,1);
  endfor
endfor
A
B
L
y
x

    