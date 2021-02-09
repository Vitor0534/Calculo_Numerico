% metodo de gauss-seidel
printf("metodo de Gauss-seidel\n\n");
for i=1:10
  for j=1:10
    if(i==j)
       A(i,j)=-4;
    elseif(abs(i-j)==1)
       A(i,j)=2;
    elseif(abs(i-j)>=2)
       A(i,j)=0;
    endif
     
  endfor
endfor

A

for i=1:10
  b(i)=i+1;
  x(i)=0;
endfor

b
x

k=0;
while (norm(x-veri,2)/norm(x,2)>=0.001 && k<200)
for i=1:10
  soma1=0;
  soma2=0;
  veri=x;
  for j=1:10
    if (j<i)
      soma1+=A(i,j)*x(j);
    elseif(j>i)
      soma2+=A(i,j)*x(j);
    endif
  endfor
  x(i)=(1/A(i,i))*(b(i)-soma1-soma2);
endfor
k++;
endwhile

x

printf("metodo de jacobi\n\n");

   for i=1:10
      x(i)=0;
   endfor

 k=0;
while (norm(x-y)/norm(x)>=0.001 && k<200)
  y=x;
for i=1:10
   soma1=0; 
   for j=1:10
     if (i!=j)
       soma1+=A(i,j)*y(j);
     endif
  endfor
  x(i)=(1/A(i,i)) * (b(i)-soma1);
endfor
k++;
endwhile

x

%realizando as multiplicações
y=transpose(b);
X=[0;0;0;0;0;0;0;0;0;0];
G=inv(A);
for i=1:10
  X(i,1)=0;
  for j=1:10
    X(i,1)+=G(i,j)*y(j,1);
  endfor
endfor

X