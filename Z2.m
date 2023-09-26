%Z函数取10个实数beta，画Z-beta图
function Z2
beta = 0:0.1:1;
numb = numel(beta);
part_list = zeros(1,numb);
for ii = 1:numb
 part_list(ii) = Z_beta(beta(ii));
   
end
plot(beta,part_list,'-o');
xlabel('\beta'); ylabel('Z');
title('M = %.1f',M);