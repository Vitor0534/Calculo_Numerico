printf("QUETÃO 3\n\n");
x=2;
a=[ 2 4 5 6 7 ];   %vetor de valores de a
res=1;            %resultado
numeroMult=0;     %numero de multiplicações

%forma aninhada%

for i=1: 4
  
  if (i==1)
    res=a(i)*x+a(i+1);
   
  else
    res=res*x+a(i+1);
   
  endif
   numeroMult++;
   
endfor



%forma plana%
i=1; 
k=5; %representa  graus de x
j=1;
cont=1;
while (i<=5)
  aux=x;
  
    while (j<i)
    
      if(j>=3)
         aux=aux*x;
         cont++;
      elseif (i==1)
         aux=1;
      endif
      j++;
    endwhile
     j=1;
     res+=a(k)*aux;
     cont++;  
     i++;
     k--;
     
endwhile

printf("o numero de multiplicações para a forma plano foi %d \n\n", cont);
printf("o numero de multiplicação para a forma aninhada foi %d \n\n", numeroMult);


