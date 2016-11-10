function [ J ] = trapezoidal(f,a,b,n)
h=(b-a)/n;
x=a;
J=0.5*f(x);
for i = 1:(n-1)
    x=x+h;
    J=J+f(x);
end
J=h*(J+0.5*f(b));
end

