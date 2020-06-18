x1=1;
x2=0;
r=0.3;
h=0.3;
d0=0.3;


d=r.*h;
  y=x1+h.*x2;
 a0=sqrt(d.*d+8.*r.*abs(y));
 if abs(y)>abs(d0)
     a=x2+0.5.*a0-0.5.*d;
 else
     a=x2+y/h;
 end
 if abs(a)<=abs(d)
     out=-a/d; 
     out=out.*r;
 else
      out=-r.*sign(a);
 end