function [ y ] = improvedEuler(f,x0,xn,y0,h)
x=x0;
y=y0;

while x < xn
    xnext=x+h;
    k1=h*f(x,y);
    k2=h*f(xnext,y+k1);
    y=y+0.5*(k1+k2);
    x=xnext;
end

end

