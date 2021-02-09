#include <iostream>
#include <math.h>
using namespace std;

double FC(double x){
	double y;
	y=pow(x,2)-6;
	return y;
}


int main ()
{
	double a,b,m;
	a=0;
	b=6;
	m=9.99;
if (FC(a)*FC(b)<0) {
		
       cout<<"estou aqui dentro"<<endl;
  while (FC(m) >0.0001)
  {
      m=(a*FC(b)- b*FC(a))/(FC(b)-FC(a));
      if (FC(a)*FC(m)<0)
      {
         b=m;
         cout<<b<<endl;
	  }else{
        if (FC(b)*FC(m)<0)
        {
         a=m;
	    }
      }

  } 
  cout<<" a raiz da função é: "<<m<<endl;
}
else{
  cout<<"não existe raiz nesse intervalo"<<endl;
    }

 
	
}
