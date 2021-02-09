%AED6
%Aluno: Vitor de Almeida Silva


printf("AED 6 (in�cio)\n\n");

n = 70
x = 0.5
h = 1
emax = 0;

vetor1=0;
vetorCos=0;

for i=1: n ;
h = 0.25 * h;
y = (sin(x + h) - sin(x))/h;

vetor(i)=y; %vetor que recebe os valores de y p/ plotar o gr�fico
vetorCos(i)=cos(x); y; %vetor que recebe o valor constante de cos(0.5)

erro = abs(cos(x) - y);
printf("i=%.d, h=%.20f, y=%.8f, erro=%.8f\n\n",i, h, y,erro);
 if (erro > emax)
   emax = erro;
   imax = i;
 endif

endfor

printf("imax= %.4f , emax= %.4f \n", imax,emax);
      %plotando o gr�fico
      t=1: 1: n;
      ploty_h= plot(vetor,t,'-r');
      grid on
      hold on
      ploty_h= plot(vetorCos,t'-b');
      grid on
      hold on
     

% a deravada do seno � o coseno, logo, por conta disso o erro � calculado
%tendo em vista os valores de erro de cos-y
% olhando para a fun��o " y = (sin(x + h) - sin(x))/h; ", vemos que, o h
%vai caminhando de forma a se aproximar de 0. Com isso, temos que, em um
%determinado momento, h ser� t�o pr�ximo de 0 que a conta "sin(x + h) - sin(x)"
% equivaler� a conta "sin(x) - sin(x)" com isso se v� o resultado de y igual a 0
%(obs: aten��o ao fato de h est�r dividindo toda aquela parcela, caso h chegue a
%ser considerado como 0, iremos ter uma indetermina��o do tipo x/0), isso n�o ocorre
%pelo fato de estarmos limitando nossas intera��es em n=70.
%  Olhando novamente para os resultado de y, nota-se que, o mesmo, antes de ser consi-
%derado como 0, se estabiliza no valor aproximado de y=0.87758255, isso seria o resultado
%da aproxima��o da derivada de seno no ponto x=0.5, que tamb�m pode ser visto no c�digo
% na sequ�ncia de saida notamos que em um dado momento, mais expecificamente em i=13, nosso
%erro acaba sendo 0, isso significa que a derivada chegou ao valor de cos desejado, por�m
%a partir deste momento o valor vai se aproximando de 0 por conta do h.