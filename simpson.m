function [ J ] = simpson(f,a,b,n)
h=(b-a)/n;
J=f(a);
x=a+h;
for i =1:((n/2)-1)
   J=J+4*f(x)+2*f(x+h); 
   x=x+2*h;
end
J=(h/3)*(J+4*f(x)+f(b));
end

