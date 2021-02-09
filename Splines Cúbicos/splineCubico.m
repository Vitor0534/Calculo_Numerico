    %% Inserção de dados
    

    n=input("Insira o indice do ultimo elemento(ex: x0,x1,x2...,xN):\n"); %grau do spline
    
    x=0; %vetor de pontos x
    y=0; %vetor de pontos y
    h=0; %passo da spline
    alfa=0; %vetor que recebe os resultados referentes a b do livro
    
   
    PontH=6/(n-1);
    %preenchendo os vetores de pontos
    for i=1: n+1
            x(i)=-2+i*PontH
            y(i)=F2a0(x(i));
    endfor
##    x=[1 2 3 4 5];
##    y=[2.4 2.5 4.6 5.3 6.4];
    
    %Calculo passo1 H
    for i=1: n
       h(i) = x(i+1)-x(i);
    endfor
     
    %Inicio do passo 2 %% este representa o vetor b no livro
    for i=2: n
        alfa(i) = ( (3/h(i))*(y(i+1) - y(i) ) - ( 3/h(i-1) ) * ( y(i)-y(i-1) ));
        %alfa(i)=6*((y(i+2)-y(i+1))/h(i+1)-(y(i+1)-y(k))/h(i));
    endfor

    %Inicio do passo 3 %leva em consideração as aproximações das derivadas ditas no livro
   % l=0;
    %u=0;
    %z=0;
    
    l(1) = 1;
    u(1) = 0;
    z(1) = 0;

    %Inicio do passo 4
    for i = 2: n 
        l(i) = ( ( 2*( x(i+1)-x(i-1) ) ) - ( h(i-1) * u(i-1) ) );
        u(i) = h(i)/l(i);
        z(i) = ( ( alfa(i) - ( h(i-1) * z(i-1))/l(i) ));
    endfor

    %Inicio do passo 5
    l(n-1) = 1;
    z(n-1) = 0;
    
    c=0;
    b=0;
    d=0;  %vetores de coeficientes
    
    c(n+1) = 0;

    %Inicio passo 6
    i = n;
    while (i>=1)
        c(i) = z(i) - (u(i)*c(i+1));
        b(i) = (((y(i+1)-y(i))/h(i)) - ((h(i)*(c(i+1)+2*c(i)))/3) );
        d(i) = ((c(i+1) - c(i))/ (3*h(i)));
        i--;
    endwhile

    
    c
    b
    d
    for i = 1: n-1 
        printf("s(%d) = %.5f + %.5f*(x-%.2f) + %.5f*(x-%.2f)^2 + %.5f(x-%.2f)^3\n",i, y(i), b(i), x(i), c(i), x(i),d(i),x(i));
    endfor
    
##    for i=1: n-1
##      t(i,:)=x(i):0.01: x(i+1);
##      p(i,:)=d(i).*(t(i).^3)+c(i).*(t(i).^2)+b(i).*t(i)+y(i)
##      plot(t(i,:),p(i,:),'k')
##      grid on
##      hold on
##    endfor
    %plot (c,d,'0')
s=0;
t=0; 
L=0;
    for i=2: n-1
      t= x(i): 0.01: x(i+1);

      for j=1:length(t)
        s(j)=d(i-1)*(x(i)-t(j))^3+c(i-1)*(t(j)-x(i-1))^3+b(i-1)*(x(i-1)-t(j))+y(i-1)*(t(j)-x(i-1));
        L(j)=F2a0(t(j));
      endfor
      ploty_h= plot(t,s,'-');
      grid on
      hold on
      ploty_h= plot(t,L,'-');
      grid on
      hold on
    endfor
     x(n)=0;
     s(n)=0;
##      o=[ 0 1 2 3 4 5 6 7 ];
##      i=[ 1.5 -2 -4 4 5 6 7 8 ];
      %ploty_h= plot(x,s,'-');
      %hold on
      



