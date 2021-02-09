disp('inicio prog');
a=4;
b=2;
toler=2;


Fa=FC(a);
Fb=FC(b);

 if (Fa*Fb > 0)
 disp('Escreva função não troca de sinal no intervalo [a,b]')
 endif


inter=0;
DeltaX=0;
while (oxi == 1)
  
 DeltaX = abs(b - a) / 2
 x = (a + b) /2
 Fx=Fc(x);
 disp('iter, a, Fa, Fb, b, Fb, x, Fx, DeltaX')
 
  if (DeltaX <= toler & abs(Fx) <= toler) | (inter >= IterMax)
     oxi=0;
  else
     if (Fa * Fx > 0)
     a = x;
     Fa=Fx;
     else
     b = x;
     endif
  
  endif
 
 DeltaX = DeltaX / 2;
 inter = inter + 1;
 oxi=0;
 
end
end

 raiz = x;
 %teste de convergência
 if DeltaX <= toler e abs(Fx) <= toler
      CondErro = 0
 else 
      CondErro = 1
 endif



