function [ A ] = evalFunMatrix(B,x)
    %Evaluates all functions in a matrix. All functions must take the same
	%number of arguments. Returns matrix of results
	[rows,cols]=size(B);
    xcell=num2cell(x);
    for i = 1:rows
        for j = 1:cols
            A(i,j)=B{i,j}(xcell{:});
        end
    end
end

