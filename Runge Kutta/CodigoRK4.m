%AED8: Implementação do RK4
%Aluno: Vitor de Almeida Silva


%1) ter o dados de valores iniciais y(t0)=y0
%ter também a edo a se aproximar y`=f(tn,yn)
%2)obter o intervalo [a,b];
%3)obter o passo dentro do intervalo h=(b-a)/N
    % * t(n+1)= t(n) h ou t(i+1)=t(i)+i*h;
    % * t(0)=a  t(n)=b
%4) AEDF1 é a função f(t,y) 

%dados:
a=0;
b=1.1;

t=a;
y=1;
h=0.025;

%resolução
i=1;
while (t<b)
  
  k1=h*AED7F1( t , y);
  k2=h*AED7F1( t+h/2 , y+k1/2);
  k3=h*AED7F1( t+h/2 , y+k2/2);
  k4=h*AED7F1( t+h , y+k3);
  y= y + (k1+2*k2+2*k3+k4)*h/6;
  t=a + i*h;
  i++;
 
  
endwhile

printf("resultado y=%.8f\n\n",y);





