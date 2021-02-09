% AED7: Implementar o m�todo de simpson composto e verificar o resultados
%Aluno: Vitor de Almeida silva

% 1) definir os dados:
##     h=(6-1)/10=0.5;
##     intervalo [1,6];
##     h=(b-a)/m, m=2n,logo, m=10 e n=5;
     
     h=0.5;
     a=1;
     b=6;
     n=10;
     m=5;
 %ser�o usadas 10 subdivis�es do intervalo no m�todo
 
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

% 3) resolver somat�rios e a formula do m�todo

Soma1=0;
Soma2=0;

i=2;
while (i<=m)
  j=X((2*i-1));
  Soma1=Soma1 + FuncBN(j);
  i++;
endwhile

i=1;
while(i<=m)
  j2=X(2*i);
  Soma2+=FuncBN(j2);
  i++;
endwhile

Integral= (h/3)*( FuncBN(a)+FuncBN(b)) + (2*h/3)*Soma1 + (4*h/3)*Soma2