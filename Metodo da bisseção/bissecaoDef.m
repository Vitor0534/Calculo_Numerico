%Metodo da bisseção%
a=0.05;  % intervalo dado no enunciado
b=0.1;

m=0;
test=0;

if (FuncaoTest1(a)*FuncaoTest1(b)<0)
  
  while (abs(a-b)>0.0000000000000000000001)
      m=(a+b)/2;
      if (FuncaoTest1(a)*FuncaoTest1(m)<0)
         b=m
      endif
      if (FuncaoTest1(b)*FuncaoTest1(m)<0)
         a=m
      endif
  endwhile
  
 else 
  printf("não existe raiz nesse intervalo");
  
endif


printf(" a raiz da função é %.10f\n\n",m);
