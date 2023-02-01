%动画演示epsilon随系数g的变化

for g=0:0.01:1
    M=1000;
    k=1:M;
    q=pi*k/M;
    e = sqrt(1+g.^2-2*g.*cos(q));
    plot(q,e);
%     set(gca, 'XLim',[0 5]);
    xlabel('$q=\frac{\pi k}{M}$','interpreter','latex');
    ylabel('$\epsilon(q)$','interpreter','latex');
    title('$\epsilon_q=\sqrt{1+g^2-2g\cos q}$',['g=',num2str(g)],'interpreter','latex');
    daspect([1,1,1]);
%     hold on
    pause(0.1)
end
