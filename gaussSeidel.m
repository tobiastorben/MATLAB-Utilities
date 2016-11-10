function x = gaussSeidel(A,b,x0,nIter)
n = length(A(1,:));
lx = x0;
for i = 1:nIter
x=[];
    for j = 1:n
    sum1 = 0;
    sum2 = 0;
        for k = 1:(j-1)
            sum1 = sum1 + A(j,k)*x(k);
        end
    
        for k = (j+1):n
            sum2 = sum2 + A(j,k)*lx(k);
        end
        x(j) = (1/A(j,j))*(b(j)-sum1-sum2);
    end
lx = x;
end
end

