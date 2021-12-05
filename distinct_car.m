%配送方案中需要取货的仓库号
function B= distinct_car(m)%m是一辆车的一种配送方案
%工位号与仓库号之间的对应
%Store_connect_point = xlsread('工位点对应仓库号.xlsx','sheet1','A2:B49');
global Store_connect_point

num=numel(m);

    
for i=1:num
    m(1,i)=Store_connect_point(m(1,i),1);%对m进行更新
end
distinct_car=unique(m);%取消重复值
A=randperm(numel(distinct_car));
B=zeros(1,numel(distinct_car))*nan;
for i=1:numel(distinct_car)
%    A=randperm(numel(distinct_car));
    B(1,i)=distinct_car(1,A(1,i));
end
end

