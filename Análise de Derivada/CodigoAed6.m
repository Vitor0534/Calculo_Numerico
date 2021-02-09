%AED6
%Aluno: Vitor de Almeida Silva


printf("AED 6 (início)\n\n");

n = 70
x = 0.5
h = 1
emax = 0;

vetor1=0;
vetorCos=0;

for i=1: n ;
h = 0.25 * h;
y = (sin(x + h) - sin(x))/h;

vetor(i)=y; %vetor que recebe os valores de y p/ plotar o gráfico
vetorCos(i)=cos(x); y; %vetor que recebe o valor constante de cos(0.5)

erro = abs(cos(x) - y);
printf("i=%.d, h=%.20f, y=%.8f, erro=%.8f\n\n",i, h, y,erro);
 if (erro > emax)
   emax = erro;
   imax = i;
 endif

endfor

printf("imax= %.4f , emax= %.4f \n", imax,emax);
      %plotando o gráfico
      t=1: 1: n;
      ploty_h= plot(vetor,t,'-r');
      grid on
      hold on
      ploty_h= plot(vetorCos,t'-b');
      grid on
      hold on
     

% a deravada do seno é o coseno, logo, por conta disso o erro é calculado
%tendo em vista os valores de erro de cos-y
% olhando para a função " y = (sin(x + h) - sin(x))/h; ", vemos que, o h
%vai caminhando de forma a se aproximar de 0. Com isso, temos que, em um
%determinado momento, h será tão próximo de 0 que a conta "sin(x + h) - sin(x)"
% equivalerá a conta "sin(x) - sin(x)" com isso se vé o resultado de y igual a 0
%(obs: atenção ao fato de h estár dividindo toda aquela parcela, caso h chegue a
%ser considerado como 0, iremos ter uma indeterminação do tipo x/0), isso não ocorre
%pelo fato de estarmos limitando nossas interações em n=70.
%  Olhando novamente para os resultado de y, nota-se que, o mesmo, antes de ser consi-
%derado como 0, se estabiliza no valor aproximado de y=0.87758255, isso seria o resultado
%da aproximação da derivada de seno no ponto x=0.5, que também pode ser visto no código
% na sequência de saida notamos que em um dado momento, mais expecificamente em i=13, nosso
%erro acaba sendo 0, isso significa que a derivada chegou ao valor de cos desejado, porém
%a partir deste momento o valor vai se aproximando de 0 por conta do h.