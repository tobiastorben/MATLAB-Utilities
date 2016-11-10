function [Ksys,Bsys,Usys] = bar()
 clear all; close all
 L = 10;
 A = 1;
 E = 1;
 F = 1;

 nElem = 10;
 nVert = nElem+1;

vertices = linspace(0,L,nVert);
elements = [[1:nElem]; ...
[2:(nElem+1)]]';

Ksys = zeros(nVert,nVert);
Bsys = zeros(nVert,1);


for i=1:nElem
elem = elements(i,:);
x0 = vertices(elem(1));
x1 = vertices(elem(2));
le = x1-x0;

Kloc = E*A/le*[[1,-1];[-1,1]];
Ksys(elem,elem) = Ksys(elem,elem) +Kloc;
end

Bsys(end,1) = F;

Ksys(:,1) = 0;
Ksys(1,:) = 0;
Ksys(1,1) = 1

Usys = Ksys\Bsys;

plot(vertices,Usys)
