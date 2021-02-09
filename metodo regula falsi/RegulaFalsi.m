%metodo regula falsi%
a=0;
b=9;
m=0;
test=0;

if (FC(a)*FC(b)<0)
  i=0;
  while (FC(m) >0.01)
      m=(a*FC(b)- b*FC(a))/(FC(b)-FC(a));
      if (FC(a)*FC(m)<0)
         b=m;
      endif
      if (FC(b)*FC(m)<0)
         a=m;
      endif
  endwhile
  
 else 
  printf("não existe raiz nesse intervalo");
  test=1;  
endif

printf(" a raiz da função é %.4f\n\n",m);