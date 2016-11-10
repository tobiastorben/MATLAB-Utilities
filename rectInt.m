function [ J ] = rectInt(f,a,b,n)
h=(b-a)/n;
x=a+(h/2);
J=0;
for i = 1:n
    J=J+f(x);
    x=x+h;
end
J=h*J;
end

