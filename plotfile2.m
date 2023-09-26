function plotfile2
betaR = 0:0.1:1;
numb2 = numel(betaR);
for jj = 1:numb2
    betar = betaR(jj);
    finame2 = sprintf('data%.4f.mat',betar);
    load(finame2);
    subplot(3,4,jj);
    plot(betai,real(part_list),'-*',betai,imag(part_list),'-o',[0,1],[0,0],'-k');
    legend('Z_R','Z_I');
    xlabel('\beta_I'); ylabel('Z=R+I');
%     title('\beta_R=',num2str(betar));
    title(sprintf("\beta_R = %.1f", betar));


end

end