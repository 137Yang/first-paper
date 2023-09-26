%output Z, formula(6.7)
function part = Z_beta(beta)
    M=64;
    k = 1:M;
    k1 = 2*k;
    k2 = 2*k-1;
    Ka=0 ; J=1;
    e1 = sqrt((Ka^2+J^2)-2*Ka*J*cos(pi*k1/M));
    e2 = sqrt((Ka^2+J^2)-2*Ka*J*cos(pi*k2/M));

    part = 1/2 * (prod(2*cosh(beta*e1)) + prod(2*sinh(beta*e1)) + ...
        prod(2*cosh(beta*e2)) + prod(2*sinh(beta*e2)));

end