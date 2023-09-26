function Z
M = 4;
k = 1:M;
k1 = 2*k;
k2 = 2*k-1;
Ka=1 ; J=1;
e1 = sqrt((Ka^2+J^2)-2*Ka*J*cos(pi*k1/M));
e2 = sqrt((Ka^2+J^2)-2*Ka*J*cos(pi*k2/M));
beta = 0.5;
part = 1/2 * (prod(2*cosh(beta*e1)) + prod(2*sinh(beta*e1)) + ...
    prod(2*cosh(beta*e2)) + prod(2*sinh(beta*e2)));
end 