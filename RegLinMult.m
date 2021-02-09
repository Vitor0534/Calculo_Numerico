%%Regreção linear Multipla AED
%Aluno: Vitor de almeida Silva

%inserindo os dados:

Y= [ 18 8.875 2 20 2.375 2.75 3.3333 1 1.3333 1.75 4.125 12.875 5.375 28 4.75 1.75 0.1333 ];

X1= [4.15476 0.15909 0.15909 2.32812 0.25521 0.57292 0.70139 0.13542 0.12121 0.10937 0.56250  2.45312 0.45312 6.68750 0.86979 0.14583  0.01562 ];

X2= [52.705 42.069 34.766 27.622 45.879 97.472 102.062 97.790 88.265 58.737 42.386 31.274 31.750 35.401 64.516 25.241 36.354];


n=17;
m=2;

%somas dos x 
somaX1=somaX2=somaX3=0;
  for j=1:n
    somaX1+=X1(j);
    somaX2+=X2(j);
  endfor
  
 %somas dos X^2
 somaQX1=somaQX2=somaQX3=0;
 for j=1:n
    somaQX1+=X1(j)*X1(j);
    somaQX2+=X2(j)*X2(j);
  endfor
  
 %outras multiplicações
 somaX1X2=somaX2X3=somaX3X1=0;
 for j=1:n
    somaX1X2+=X1(j)*X2(j);
  endfor
  
  %calculos com os Y
  somaY=somaYX1=somaYX2=somaYX3=0;
  for j=1:n
    somaY+=Y(j);
    somaYX1+=Y(j)*X1(j);
    somaYX2+=Y(j)*X2(j);
  endfor
  
  %criando matriz de dados
  P=[ n somaX1 somaX2; somaX1 somaQX1 somaX1X2;
      somaX2 somaX1X2  somaQX2]
  
  %criado o vetor resposta Y
  y=[ somaY somaYX1 somaYX2]
  
  %reposta dos coeficientes
  A=y/P
  
  %calculo do erro
  Sr=0;
  for j=1:n
    Sr+= (Y(j)-A(1)-A(2)*X1(j)-A(3)*X2(j))*2;
  endfor
  e=sqrt( Sr/ (n-(m+2)));
  
  
  %modelo do polinômio
  printf("Y= %.4f + %.4f*X1+ %.4f*X2 + %.11f \n\n", A(1),A(2),A(3),e);
  
