    %% Inserção de dados
    

    n=input("Insira o indice do ultimo elemento(ex: x0,x1,x2...,xN):\n"); %grau do spline
    
    x=0; %vetor de pontos x
    y=0; %vetor de pontos y
    h=0; %passo da spline
    alfa=0; %vetor que recebe os resultados referentes a b do livro
    
   
    PontH=6/(n-1);
    %preenchendo os vetores de pontos
    for i=1: n
            x(i)=-2+i*PontH
            y(i)=F2a0(x(i));
    endfor
##    x=[1 2 3 4 5];
##    y=[2.4 2.5 4.6 5.3 6.4];

x
y

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
  h
  k
  S=0;
  S=k/h
  s=0;
  s(n)=0;
  for i=1: n-2
    s(i+1)=S(i);
  endfor
  s
##s=[0;0;0;0];
##G=inv(h)
##for i=1:4
##  s(i,1)=0;
##  for j=1:4
##    s(i,1)+=G(i,j)*K(j,1);
##  endfor
##endfor
##s

    a=b=c=d=0;
    a(n-1)=b(n-1)=c(n-1)=d(n-1)=0;
  for i=2: n-2
    a(i)=s(i-1)/(6*(x(i)-x(i-1)));
    b(i)=s(i)/(6*(x(i)-x(i-1)));
    c(i)=(y(i-1)/(x(i)-x(i-1)))-((s(i-1)*(x(i)-x(i-1)))/6);
    d(i)=(y(i)/(x(i)-x(i-1)))-((s(i)*(x(i)-x(i-1)))/6);
  endfor
  
  a
  b
  c
  d
  
##     for i = 1: n-1 
##        printf("s(%d) = %.5f + %.5f*(x-%.2f) + %.5f*(x-%.2f)^2 + %.5f(x-%.2f)^3\n",i, y(i), b(i), x(i), c(i), x(i),d(i),x(i));
##     endfor
    
    
    
z=0;
t=0; 
L=0;
    for i=2: n-2
      t= x(i-1): 0.01: x(i+1);

      for j=1:length(t)
        %z(j)=a(i-1)*(x(i)-t(j))^3+b(i-1)*(t(j)-x(i-1))^2+c(i-1)*(x(i)-t(j))+d(i-1)*(t(j)-x(i-1));
        L(j)=F2a0(t(j));
      endfor
     % ploty_h= plot(t,z,'-');
      %grid on
      %hold on
      ploty_h= plot(t,L,'-');
      grid on
      hold on
    endfor
     x(n)=0;
     z(n)=0;
     
     
     
     
     
##      o=[ 0 1 2 3 4 5 6 7 ];
##      i=[ 1.5 -2 -4 4 5 6 7 8 ];
      %ploty_h= plot(x,s,'-');
      %hold on
      
    
    
## for i=1:n-2
##  for j=1:n
##    matDev(i,1)+=h(i,j)*P(j,1);
##  endfor
##endfor


 
## 
##    
##    
##    
##    %Calculo passo1 H
##    for i=1: n
##       h(i) = x(i+1)-x(i);
##    endfor
##     
##    %Inicio do passo 2 %% este representa o vetor b no livro
##    for i=2: n
##        alfa(i) = ( (3/h(i))*(y(i+1) - y(i) ) - ( 3/h(i-1) ) * ( y(i)-y(i-1) ));
##        %alfa(i)=6*((y(i+2)-y(i+1))/h(i+1)-(y(i+1)-y(k))/h(i));
##    endfor
##
##    %Inicio do passo 3 %leva em consideração as aproximações das derivadas ditas no livro
##   % l=0;
##    %u=0;
##    %z=0;
##    
##    l(1) = 1;
##    u(1) = 0;
##    z(1) = 0;
##
##    %Inicio do passo 4
##    for i = 2: n 
##        l(i) = ( ( 2*( x(i+1)-x(i-1) ) ) - ( h(i-1) * u(i-1) ) );
##        u(i) = h(i)/l(i);
##        z(i) = ( ( alfa(i) - ( h(i-1) * z(i-1))/l(i) ));
##    endfor
##
##    %Inicio do passo 5
##    l(n-1) = 1;
##    z(n-1) = 0;
##    
##    c=0;
##    b=0;
##    d=0;  %vetores de coeficientes
##    
##    c(n+1) = 0;
##
##    %Inicio passo 6
##    i = n;
##    while (i>=1)
##        c(i) = z(i) - (u(i)*c(i+1));
##        b(i) = (((y(i+1)-y(i))/h(i)) - ((h(i)*(c(i+1)+2*c(i)))/3) );
##        d(i) = ((c(i+1) - c(i))/ (3*h(i)));
##        i--;
##    endwhile
##
##    
##    c
##    b
##    d
##    for i = 1: n-1 
##        printf("s(%d) = %.5f + %.5f*(x-%.2f) + %.5f*(x-%.2f)^2 + %.5f(x-%.2f)^3\n",i, y(i), b(i), x(i), c(i), x(i),d(i),x(i));
##    endfor
##    
####    for i=1: n-1
####      t(i,:)=x(i):0.01: x(i+1);
####      p(i,:)=d(i).*(t(i).^3)+c(i).*(t(i).^2)+b(i).*t(i)+y(i)
####      plot(t(i,:),p(i,:),'k')
####      grid on
####      hold on
####    endfor
##    %plot (c,d,'0')
##s=0;
##t=0; 
##    for i=1: n
##      t= x(i): 0.01: x(i+1);
##
##      for j=1:length(t)
##        s(j)=d(i)*(t(j)^3)+c(i)*(t(j)^2)+b(i)*t(j)+y(i);
##        L(j)=F2a0(t(j));
##      endfor
##      ploty_h= plot(t,s,'-');
##      grid on
##      hold on
##      ploty_h= plot(t,L,'-');
##      grid on
##      hold on
##    endfor
##     x(n)=0;
##     s(n)=0;
####      o=[ 0 1 2 3 4 5 6 7 ];
####      i=[ 1.5 -2 -4 4 5 6 7 8 ];
##      %ploty_h= plot(x,s,'-');
##      %hold on
##      
##
##
##
