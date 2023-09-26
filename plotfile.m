%分别画出
function plotfile

betaR = 0:0.2:1;
numb1 = numel(betaR);
for jj = 1:numb1
    betar = betaR(jj);
    finame = sprintf('data%.4f.mat',betar);
    load(finame);
    subplot(3,4,jj);
    plot(betai,real(part_list),'-*',betai,imag(part_list),'-o',[0,1],[0,0],'-k');%最后一个是y=0水平线
    legend('real','imag');
end

end