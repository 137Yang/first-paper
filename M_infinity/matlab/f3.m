

for g=0:0.01:1
    beta=0:0.1:10;
    e = sqrt(1+g.^2-2*g.*cos(q));
    h = log((tanh(beta.*e)).^2);
    eqn = int(h,q,0,pi);
    plot(beta,eqn);
    pause(0.1)
end