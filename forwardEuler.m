function [ y] = forwardEuler(f,x0,xn,y0,h)
x=x0;
y=y0;
while x < xn 
   y=y+f(x,y)*h;
   x=x+h;
end

