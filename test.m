    x=linspace(0,1000,100);
    y=cos(x);
   % x = -2:2;
   % y = [-1 3 1 -1 3];
    n = length(x);
    lkMat = zeros(n,n);
    liX=zeros(1,n);
    coeffs = zeros(1,n);
    %li =  a + bx + cx^2 ... = [a,b,c ...]
    for i = 1:n
        li = zeros(1,n);
        liA = zeros(1,n);
        liB = zeros(1,n);
        if i ~= 1
            li(1)=-x(1);
            start=2;
        else
            li(1) = -x(2);
            start=3;
        end;
        li(2) = 1;
      
        for j = start:n
            if j ~= i          
                liA = circshift(li',1)';
                liB=-x(j)*li;
                li=liA+liB;
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