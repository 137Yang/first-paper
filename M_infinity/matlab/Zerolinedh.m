%% 做成动画，并保存
vidObj = VideoWriter('Zerolines.avi'); %建立avi文件
open(vidObj); %打开文件
format long
syms q
for g=0:0.05:1.0
    [x,y]=meshgrid(0.01:0.03:2);
    ee = sqrt(1+g^2-2*g*cos(q));
    h = log(tanh((x+1i*y*pi)*ee).*tanh((x-1i*y*pi)*ee));

    eqn = vpaintegral(h,q,0,pi);

    contour(eqn,[0,0],'ShowText','on')

    xlabel('$\beta_r$','interpreter','latex');
    ylabel('$\beta_i$','interpreter','latex');
    title(['g=',num2str(g)],'interpreter','latex');

    currFrame = getframe; %捕捉一帧画面
    writeVideo(vidObj,currFrame);
end
close(vidObj); %关闭avi文件
