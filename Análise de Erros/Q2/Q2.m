printf("QUESTÃO 2 \n");

%%%%variáveis%%%%
x=1;  res1=0;  res2=0; cont=1;
%%%%%%%%%%%%%%%%%
%%b=input('insira o numero de interações')

k=0.1;
cont=1;
printf("\nresF1: \n");
while (k<=1)
  x=k*pi;
  res1(cont)=F1Q2(x);
  printf("X%d = %.4f \n",cont,res1(cont));
  %res2(cont)=F2Q2(x);
  k=k+0.1;
  cont++;
endwhile

k=0.1;
cont=1;
printf("\nresF2: \n");
while (k<=1)
  x=k*pi;
  %res1(cont)=F1Q2(x);
  res2(cont)=F2Q2(x);
  printf("X%d = %.4f \n",cont,res2(cont));
  k=k+0.1;
  cont++;
endwhile


##disp('resF1')
##for i=1:cont-1
##   printf("X%d = %.4f \n",i,res1(i));
##endfor
##
##
##
##printf("\nresF2: \n");
##for i=1:cont-1
##  printf("X%d = %.4f \n",i,res2(i));
##endfor