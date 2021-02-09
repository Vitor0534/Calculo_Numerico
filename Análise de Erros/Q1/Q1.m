disp('QUESTÃO 1')

%%%%variáveis%%%%
x=1;  res1=0;  res2=0;
%%%%%%%%%%%%%%%%%
%%b=input('insira o numero de interações')

while (x<=15)
  
  res1(x)=F1(x);
  res2(x)=F2(x);
  x++;
  
endwhile

disp('resF1')
for i=1:15
   printf("X%d = %d \n",i,res1(i));
endfor



printf("\nresF2: \n");
for i=1:15
  printf("X%d = %d \n",i,res2(i));

endfor