function [ A ] = evalFunMatrix(B,x)
    %Evaluates all functions in a matrix. All functions must take the same
	%number of arguments. Returns matrix of results
    %B is a cell array, x is a row vector. A is a matrix
	[rows,cols]=size(B);
    xcell=num2cell(x);
    A=zeros(rows,cols);
    for i = 1:rows
        for j = 1:cols
            A(i,j)=B{i,j}(xcell{:});
        end
    end
end

