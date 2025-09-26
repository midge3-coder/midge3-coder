{
polmahler(P)=
     my(r,M,i);
     r=polroots(P);
     M=abs(pollead(P));
     for
     (i=1,#r,
        if(abs(r[i])>1,
           M=M*abs(r[i])
          )
     );
  return (M);
}



{
polrandom(d,B)=
p=0;
for(i=0,d,p=p+random(B)*x^i);
return(p);
}



{
polreciptest(p)=
   my(f);
   f=0;
   if(p==polrecip(p),f=1);
   return(f);
}


{
demo(n=1000)=
my(k,d,q,prop);
prop=1;
for(k=1,n,
    d=random([0,100]);
    q= polrandom(d,[-1000,1000]);
    if(polreciptest(q)!=1,
       if( polmahler(q) < polmahler(x^3-x-1),prop=0)
       );
    );
return(prop);
}
