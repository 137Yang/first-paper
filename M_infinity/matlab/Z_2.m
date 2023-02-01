% function t = tan_M()
for M=1:100
    g=1;beta=100;
    k = 1:2*M;
    e = sqrt(1+g.^2-2*g.*cos(pi*k/M));
    x = tanh(beta*e);
    t = 1 + prod(x);
    plot(k,t,'*')
    pause(0.1)
end

