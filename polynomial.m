function [ y ] = polynomial(coeffs,x)
%Evaluates a + bx + cx^2 ... = coeffs(1) + coeffs(2)x ... 
    y=zeros(1,length(x));
    for k = 1:length(x)
        for i = 1:length(coeffs)
            y(k) = y(k)+coeffs(i)*x(k)^(i-1);
        end;
    end;
end

