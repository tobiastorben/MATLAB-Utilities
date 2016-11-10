function [y] = eulerLinearSystem(f,x0,xn,y0,h)
y=y0;
x=x0;
while x < xn
   y = y + h.*evalFunMatrix(f,[x,y']);
   x=x+h;
end
end

