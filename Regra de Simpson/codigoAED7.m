% Implementar o método de simpson composto e verificar o resultados

% 1) definir os dados:
##     h=(6-1)/10=0.5;
##     intervalo [1,6];
##     h=(b-a)/m, m=2n,logo, m=10 e n=5;
     
     h=0.5;
     a=1;
     b=6;
     n=10;
     m=5;
 %serão usadas 10 subdivisões do intervalo no método
 
 % 2) definindo os elementos do intervalo X1,X2,X3...X6
 
 X=0;
 j=1;
 i=a;
 while (i<=b)
   X(j)= i;
   i+=h;
   j++;
 endwhile
 
X

% 3) resolver somatórios e a formula do método

Soma1=0;
Soma2=0;

i=2;
while (i<=m)
  j=X((2*i-1))
  Soma1=Soma1 + FuncBN(j);
  i++;
endwhile

i=1;
while(i<=m)
  j2=X(2*i)
  Soma2+=FuncBN(j2);
  i++;
endwhile

% este é o calculo da derivada do erro
x=X(1);
y=2*sin(2*x^(1/2))/x^2 + 6*cos(2*x^(1/2))/x^(5/2) - 15*sin(2*x^(1/2))/2*x^3 - 15*cos(2*x^(1/2))/4*x^(7/2);
for i=2: size(X)(2)
  x=X(i);
  j=2*sin(2*x^(1/2))/x^2 + 6*cos(2*x^(1/2))/x^(5/2) - 15*sin(2*x^(1/2))/2*x^3 - 15*cos(2*x^(1/2))/4*x^(7/2);
  if( abs(j) > abs(y))
     y=j;
   endif
endfor

Soma1
Soma2



Integral= (h/3)*( FuncBN(a)+FuncBN(b) + 2*Soma1 + 4*Soma2)