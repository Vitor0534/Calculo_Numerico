%metodo da secante%

##p1=input("insira um chute para p1: ");
##p2=input("\n\n insira um chute para p2: ");
p1=0.05;
p2=0.1;
p3=0;
FC(p1)
FC(p2)

if(FC(p1)*FC(p2)<0)
    i=0;
    while (i<=3)
      p3=p2-(FC(p2)*(p2-p1))/(FC(p2)-FC(p1))
      p2=p3;
      p1=p2;
      i++;
    endwhile
       
  else
        printf("não existe raiz neste intervalo");
endif

printf("a raiz é %.9f",p3);
