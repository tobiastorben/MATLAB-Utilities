function [ coeffs ] = rootsToPoly(roots)
    n=length(roots)+1;
    temp=zeros(1,n);
    coeffs=zeros(1,n);
    coeffs(1) = -roots(1);
    coeffs(2) = 1;
    k=3;
    
    for j = 2:n-1
        temp(2:(k))=coeffs(1:(k-1));
        coeffs=temp-roots(j)*coeffs;
        k = k+1;
    end;
end

