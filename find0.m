%找到Z实部的零点，β = R + Ii

function find0
zerolist = [];
zerolisti = [];
betaRR = 0.01:0.01:1;
numbr = numel(betaRR);

for ii=1:numbr%依次对β每一个实部
    betar = betaRR(ii);
    filename = sprintf('/prof/suziki/data/data%.4f.mat',betar );
    load(filename);
    part_list

    numb = numel(part_list) - 1; %确定Z的个数（即β虚部的个数）
    s0 = 0;
    for jj = 1:numb      %依次扫描β所有的虚部
        sn = sign(real(part_list(jj)));%测试Z实部的符号
        sc = s0*sn;
        if sc<0                                %找到Z实部零点对应的βi
            bi = inte(betai,real(part_list),jj);
            zerop = [betar,bi];                %录入Z实部零点对应的β值，存入zerolist
            zerolist = [zerolist;zerop];
        end
        s0 = sign(real(part_list(jj)));
    end

    s0 = 0;
    for jj = 1:numb      %依次扫描β所有的虚部
        sn = sign(imag(part_list(jj)));%测试Z虚部的符号
        sc = s0*sn;
        if sc<0                                %找到Z虚部零点对应的βi
            bi = inte(betai,imag(part_list),jj);
            zerop = [betar,bi];                %录入Z虚部零点对应的β值，存入zerolisti
            zerolisti = [zerolisti;zerop];
        end
        s0 = sign(imag(part_list(jj)));
    end
end
plot(zerolist(:,1),zerolist(:,2),'*',zerolisti(:,1),zerolisti(:,2),'o')%画出Z实部零点对应β值与Z虚部零点对应β值的交点，即为Z零点对应的β值
xlabel('\beta(R)'); ylabel('\beta(I)');%（x轴为R，y轴为I）
legend('Z(R)=0','Z(I)=0');

% r0 = abs(zerolist(:,2)-zerolisti(:,2))<=0.01;
% xx=x(r0~=0);
% yy=y(r0~=0);
% plot3(xx,yy,'*k')


% betaZr0=zerolist(:,1)+1i*zerolist(:,2);
% betaZi0=zerolisti(:,1)+1i*zerolisti(:,2);


("Z_beta.m");
% title(sprintf('M=%.1f','J=%.1f','\Gamma=%.1f',M,J,Ka));
title('M=64,J=1,\Gamma=0');
end                                                                    
 


function bi = inte(listx,listy,jj)%求出bi，为Z实部零点对应的β的虚部
x2 = listx(jj); x1 = listx(jj-1);
y2 = listy(jj); y1 = listy(jj-1);
bi = x2 - y2*(x2-x1)/(y2-y1);
end