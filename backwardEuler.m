function [ y ] = backwardEuler(f,df,x0,xn,y0,h,nIterNewton)
x=x0;
y=y0;
ly=y0;

%g = @(y,ly,h,x) y - h*f(x,y) - ly; 
%dg= @(y,h,x) 1 - h*df(x,y);

while x < xn
    for i = 1:nIterNewton
       y = y - (y-h*f(x,y)-ly)/(1-h*df(x,y));
    end
    x=x+h;
    ly=y;
end

end

