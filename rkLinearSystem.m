function y = rkLinearSystem(f,x0,xn,y0,h)
y=y0;
x=x0;
while x < xn
   k1= h.*evalFunMatrix(f,[x,y']);
   k2= h.*evalFunMatrix(f,[x+0.5*h,y'+0.5*k1']);
   k3= h.*evalFunMatrix(f,[x+0.5*h,y'+0.5*k2']);
   k4= h.*evalFunMatrix(f,[x+h,y'+k3']);
   
   y=y+(1/6)*(k1+2*k2+2*k3+k4);
   x=x+h;
end
end

