%function e = epsilon()
q=0:0.01:2*pi;
n=1;
for g=0:0.1:1
    e = sqrt(1+g.^2-2*g.*cos(q));
    subplot(3,4,n); 
    n=n+1;
    h=plot(q,e);
    
    xlabel('$q=\frac{\pi k}{M}$','interpreter','latex');
    ylabel('$\epsilon(q)$','interpreter','latex');
    title(['g=',num2str(g)]);
end

