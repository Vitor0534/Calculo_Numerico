 %% Inserção de dados
    

    n=input("Insira o indice do ultimo elemento(ex: x0,x1,x2...,xN):\n"); %grau do spline
    
    x=0; %vetor de pontos x
    y=0; %vetor de pontos y
    h=0; %passo da spline   
   
    PontH=6/(n-1);
    %preenchendo os vetores de pontos
    for i=1: n
            x(i)=-2+i*PontH;
            y(i)=F2a0(x(i));
    endfor


x
y;

% determinando os coeficientes
mem=1;
h=0;
k=0;
  for i=2: n-1       
        h(i-1,i-1)=(x(i)-x(i-1));
        h(i-1,i)=(x(i+1)-x(i-1));
        h(i-1,i+1)=(x(i+1)-x(i));
        k(i)=(6/(x(i+1)-x(i)))*(y(i+1)-y(i))+(6/(x(i)-x(i-1)))*(y(i-1)-y(i));    
  endfor
  k(1)=0;
  k(n)=0;
  s=0;
  s=k/h;  %matriz que contem o valor das segundas derivadas
 
% %s=[0;0;0;0];
% ##G=inv(h)
% ##for i=1:4
% ##  s(i,1)=0;
% ##  for j=1:4
% ##    s(i,1)+=G(i,j)*K(j,1);
% ##  endfor
% ##endfor
% ##s
    a=b=c=d=0;
    a(n-1)=b(n-1)=c(n-1)=d(n-1)=0;
  for i=2: n-2
    a(i)=s(i-1)/(6*(x(i)-x(i-1)));
    b(i)=s(i)/(6*(x(i)-x(i-1)));
    c(i)=(y(i-1)/(x(i)-x(i-1)))-((s(i-1)*(x(i)-x(i-1)))/6);
    d(i)=(y(i)/(x(i)-x(i-1)))-((s(i)*(x(i)-x(i-1)))/6);
  endfor
  
  a;
  b;
  c;
  d;
  
% ##     for i = 1: n-1 
% ##        printf("s(%d) = %.5f + %.5f*(x-%.2f) + %.5f*(x-%.2f)^2 + %.5f(x-%.2f)^3\n",i, y(i), b(i), x(i), c(i), x(i),d(i),x(i));
% ##     endfor
%     
    
    
z=0;
t=0; 
L=0;
    for i=2: n-2
      t= x(i-1): 0.01: x(i);

      z=a(i)*(t-x(i)).^3+b(i)*(t-x(i-1)).^2+c(i)*(t-x(i))+d(i)*(t-x(i-1));
      L=F2a0(x(i));
      ploty_h= plot(t,z,'-r');
      grid on
      hold on
      ploty_h= plot(t,L,'-b');
      grid on
      hold on
    endfor
     x(n)=0;
     z(n)=0;
     