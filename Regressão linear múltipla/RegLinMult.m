%%Regreção linear Multipla AED
%Aluno: Vitor de almeida Silva

%inserindo os dados:

Y= [ 25.5 31.2 25.9 38.4 18.4 26.7 26.4 25.9 32.0 25.2 39.7 35.7 26.5 ];

X1= [ 1.74 6.32 6.22 10.52 1.19 1.22 4.10 6.32 4.08 4.15 10.15 1.72 1.70];

X2= [ 5.30 5.42 8.41 4.63 11.60 5.85 6.62 8.72 4.42 7.60 4.83 3.12 5.30];

X3= [ 10.80 9.40 7.20 8.50 9.40 9.90 8.00 9.10 8.70 9.20 9.40 7.60 8.20];

n=13;
m=3;

%somas dos x 
somaX1=somaX2=somaX3=0;
  for j=1:n
    somaX1+=X1(j);
    somaX2+=X2(j);
    somaX3+=X3(j);
  endfor
  
 %somas dos X^2
 somaQX1=somaQX2=somaQX3=0;
 for j=1:n
    somaQX1+=X1(j)*X1(j);
    somaQX2+=X2(j)*X2(j);
    somaQX3+=X3(j)*X3(j);
  endfor
  
 %outras multiplicações
 somaX1X2=somaX2X3=somaX3X1=0;
 for j=1:n
    somaX1X2+=X1(j)*X2(j);
    somaX2X3+=X2(j)*X3(j);
    somaX3X1+=X3(j)*X1(j);
  endfor
  
  %calculos com os Y
  somaY=somaYX1=somaYX2=somaYX3=0;
  for j=1:n
    somaY+=Y(j);
    somaYX1+=Y(j)*X1(j);
    somaYX2+=Y(j)*X2(j);
    somaYX3+=Y(j)*X3(j);
  endfor
  
  %criando matriz de dados
  P=[ n somaX1 somaX2 somaX3 ; somaX1 somaQX1 somaX1X2 somaX3X1 ;
      somaX2 somaX1X2  somaQX2 somaX2X3; somaX3 somaX3X1 somaX2X3 somaQX3]
  
  %criado o vetor resposta Y
  y=[ somaY somaYX1 somaYX2 somaYX3]
  
  %reposta dos coeficientes
  A=y/P
  
  %calculo do erro
  Sr=0;
  for j=1:n
    Sr+= (Y(j)-A(1)-A(2)*X1(j)-A(3)*X2(j)-A(4)*X3(j))*2;
  endfor
  e=sqrt( Sr/ (n-(m+2)));
  
  
  %modelo do polinômio
  printf("Y= %.4f + %.4f*X1+ %.4f*X2 + %.4f*X3 + %.11f \n\n", A(1),A(2),A(3),A(4),e);
  
  %B) cálculo do intervalo de confiança
  yChapeu=0;
  yChapeu=somaY/n;
  t=1.96;
  Xo=[3; 8; 9];
  
  X11=[ transpose(X1) transpose(X2) transpose(X3)]
  SSE=0;
  yChapeu=A(1)+A(2)*Xo(1)+A(3)*Xo(2)+A(4)*Xo(3);
  for i=1: n
    SSE+=(Y(i) - (A(1)+A(2)*X1(i)+A(3)*X2(i)+A(4)*X3(i)))^2;
  endfor
  
  S=sqrt(SSE/(n-(m+1)-1));
  
  %intervalo 1
  neg1 = yChapeu-t*S*sqrt((transpose(Xo))*(transpose(X11)*X11)^(-1)*Xo);
  posi = yChapeu+t*S*sqrt((transpose(Xo))*(transpose(X11)*X11)^(-1)*Xo);
  
  printf("(%.5f < µy|2,8,9 < %.5f)=95\n\n",neg1,posi);
  
  
  for i=1: n
    vetory(i)=A(1)+A(2)*X1(i)+A(3)*X2(i)+A(4)*X3(i);
  endfor
  
      t= 1:1:n;
      ploty_h= plot(t,vetory,'-');
      grid on
      hold on

