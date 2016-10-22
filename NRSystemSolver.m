function [x,diff] = NRSystemSolver(F,J,x0,iterations)

    lx=x0;
    for i = 1:iterations
        fi=evalFunMatrix(F,lx)';
        Ji=evalFunMatrix(J,lx);
        h=-Ji\fi;
        xi=lx'+h;
        diff=xi-lx';
        lx=xi';
    end
    x=xi';
end

