% Z在beta复平面上（0.01+0.01i ~ 1+1i）的取值,并存入data'betar'.mat文件中
function Z3
betaR = 0:0.01:1;
numb1 = numel(betaR);
for jj = 1:numb1
    betar = betaR(jj);
    betai = 0:0.01:1;
    beta = betar+1i*betai*pi;
    numb = numel(betai);
    part_list = zeros(1,numb);
    for ii = 1:numb
        part_list(ii) = Z_beta(beta(ii));
    end
    finame = sprintf('data%.4f.mat',betar);
    save(finame);
end
end

% part_list;
% yline(0);
% plot(betai,real(part_list),'-*',betai,imag(part_list),'-o')