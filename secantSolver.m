function [ x ] = secantSolver(x0,x1,f,iterations)
lx = x1;
llx = x0;
for i = 1:iterations
    x = lx-f(lx)*(lx-llx)/(f(lx)-f(llx));
    llx = lx;
    lx = x;
end