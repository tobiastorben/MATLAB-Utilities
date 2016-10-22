function [ coeffs ] = lagrangeInterpolate(x,y)
%Return the coeffisients for the polynomial that goes
%through all points (x,y) in the input.
n = length(x);
lkMat = zeros(n,n);
liX=zeros(1,n);
coeffs=zeros(1,n);
%li =  a + bx + cx^2 ... = [a,b,c ...]
for i = 1:n
    li = zeros(1,n);
    liA = zeros(1,n);
    
    if i ~= 1
        li(1)=-x(1);
        start=2;
    else
        li(1) = -x(2);
        start=3;
    end;
    li(2) = 1;
    k=3;
    for j = start:n
        if j ~= i
            liA(2:(k))=li(1:(k-1));
            li=liA-x(j)*li;
            k = k+1;
        end;
    end;
    for k = 1:n
        liX(i) = liX(i) + li(k)*x(i)^(k-1);
    end;
    
    lkMat(i,:) = li*y(i)/liX(i);
end;

for i = 1:n
    coeffs(i) = sum(lkMat(:,i));
end;
end

