function x = jacobi(A,b,x0,nIter)
n=length(b);
x = x0;
for j = 1:n
    piv = A(j,j);
    A(j,:) = A(j,:)./piv;
    b(j)=b(j)/piv;
end

IMA = eye(n)-A;

for i = 1:nIter
    x = b + IMA*x;
end
end

