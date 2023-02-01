function find0
syms q y
x=0.25;
%g=0.5;
for g=0.5:0.1:0.5
    %e = sqrt(1+g^2-2*g*cos(q));
    
    beta = x+1i*y;
    e=sqrt(1+g^2-2*g.*cos(q));
    h = log((tanh(beta.*e))*tanh((x-1i*y).*e));
    eqn = int(h,q,0,pi)==0;
    vpasolve(eqn,y,[0,1])
    %simplify(eqn,'Steps',30)
    % assume(beta > 0);
end
end