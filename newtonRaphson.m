function [ x,diff ] = newtonRaphson(x0,f,df,iterations)
lx=x0;
for i = 1:iterations
    x = lx-f(lx)/df(lx);
    diff = abs(lx-x);
    lx=x;
end

