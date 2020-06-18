function out=fst_func(x1,x2,r,h,d0)

 d=r*h;
  y=x1+h*x2;
 a0=sqrt(d*d+8*r*abs(y));
 
 if abs(y)>abs(d0)
     a=x2+0.5*a0-0.5*d;
 else
     a=x2+y/h;
 end
 if abs(a)<=d
     fst=-r*a/d;
 else fst=-r*sign(a);
 end
 out=fst;
   

end