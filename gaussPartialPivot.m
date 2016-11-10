function [ x ] = gaussPartialPivot(A)
dim=size(A);
if (dim(1) == dim(2)-1)
n=dim(1);

for k = 1:(n-1)
   m=k;
   
   for j = (k+1):n
       if (abs(A(m,k)) < abs(A(j,k))) 
           m=j;
       end%if
   end%for
   
   if (A(m,k)== 0)
       error('No unique solution exists')
   else
       temp= A(k,:);
       A(k,:)=A(m,:);
       A(m,:)=temp;
   end%if
   
   for j = (k+1):n
       mjk=A(j,k)/A(k,k);
       A(j,:)=A(j,:)-mjk.*A(k,:);
   end%for
end%for

x=zeros(n,1);
x(n)=A(n,n+1)/A(n,n);

for i = (n-1):-1:1
    sum=0;
    for j = (i+1):n
        sum=sum+A(i,j)*x(j);
    end%for
    x(i)=(1/A(i,i))*(A(i,n+1)-sum);
end%for
else error('Invalid matrix dimensions')
end%if
end

