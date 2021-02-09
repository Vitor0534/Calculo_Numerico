% gerando valores de circunferencias e Raios atravez da formula
% a idéia e simular o mundo real onde se poderia medir uma circunfe-
%rencia qualquer usando reguas e barbantes, dai se fazeria a relação
printf("Questão 4 \n\n");
c1=12.5663; r1=2;        
c2=25.1327; r2=4;
c3=43.9822; r3=7;
c4=31.4159; r4=5;
c5=37.6991; r5=6;

c= [ c1 c2 c3 c4 c5 ];  %vetor de 5 elementos(circunferencias)
r= [ r1 r2 r3 r4 r5 ];  %vetor de 5 elementos(raios)
i=1;                    %contador
soma=0;                 %recebe a soma dos calulos para se fazer a média
Numero=0;               %conta o número de elementos somados
res=0;                  %recebe o resultado do valor aproximado de pi

%pi=C/2*R, formula para calcular o valor de pi

while (i<=5)
  
  soma=soma + c(i)/(2*r(i))
  Numero++;
  i++;

endwhile

res=soma/Numero; 
%média realizada para se ter um valor mais preciso

printf(" O valor aproximado de Pi é: %.4f \n\n",res);

