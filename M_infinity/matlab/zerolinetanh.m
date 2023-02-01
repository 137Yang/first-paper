%% 自己更改的，for g=0:0.1:1,并采用meshgrid
function zerolinetanh
format long
syms q
i=0;
for g=0:0.1:1
    [x,y]=meshgrid(0.01:0.05:2);
    ee = sqrt(1+g^2-2*g*cos(q));
    h = log(tanh((x+1i*y*pi)*ee).*tanh((x-1i*y*pi)*ee));
    i=i+1;
    eqn = vpaintegral(h,q,0,pi);
    subplot(3,4,i)
    contour(eqn,[0,0],'ShowText','on')

%     xlim([0,2]);%只设定x轴的绘制范围
%     set(gca,'XTick',0:0.03:2) %改变x轴坐标间隔显示

    xlabel('$\beta_r$','interpreter','latex');
    ylabel('$\beta_i$','interpreter','latex');
    t='$\int_0^\pi \log \left |\tanh(\beta \epsilon_q)\right |^2dq=0$';
    [t,~]=title(t,['g=',num2str(g)],'interpreter','latex');
    t.FontSize = 12;
    legend('Z=0')

end
