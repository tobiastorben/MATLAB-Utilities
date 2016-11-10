function [ coeffs ] = rootsToPoly(roots)
n=length(roots);
coeffs=zeros(1,n+1);
coeffs(1) = -roots(1);
coeffs(2) = 1;
for j = 2:n
    old1=coeffs(1);
    old=coeffs(1);
    for i = 2:j
        tmp=coeffs(i);
        coeffs(i)=old-roots(j)*coeffs(i);
        old=tmp;
    end
    coeffs(j+1)=1;
    coeffs(1)=-roots(j)*old1;
end;
end
