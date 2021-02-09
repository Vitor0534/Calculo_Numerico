%metodo de newton para sistemas não lineares
%questão 6 lista 2
x=[1 0]
x(1)
k=0
while (k<10)
  F=[ x(1)^2-cos(x(1)*x(2))-1 ; sin(x(2))-2*cos(x(1)) ];
  
  a=( 2*x(1)+x(2)*sin(x(1)*x(2)) );
  b=( -x(1)*sin(x(1)*x(2)) );
  c=( 2*sin(x(1)) );
  d=( cos(x(2) ));
  
  JF=[a b ;c  d];
  
  %s=(-F)/JF;
  G=inv(JF);
for i=1:2
  s(i,1)=0;
  for j=1:2
    s(i,1)+=G(i,j)*(-1*F(j,1));
  endfor
endfor
  x(1)=s(1)+x(1)
  x(2)=x(2)+s(2)
  k++;
endwhile

x