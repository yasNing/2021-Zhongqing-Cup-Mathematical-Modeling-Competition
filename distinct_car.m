%���ͷ�������Ҫȡ���Ĳֿ��
function B= distinct_car(m)%m��һ������һ�����ͷ���
%��λ����ֿ��֮��Ķ�Ӧ
%Store_connect_point = xlsread('��λ���Ӧ�ֿ��.xlsx','sheet1','A2:B49');
global Store_connect_point

num=numel(m);

    
for i=1:num
    m(1,i)=Store_connect_point(m(1,i),1);%��m���и���
end
distinct_car=unique(m);%ȡ���ظ�ֵ
A=randperm(numel(distinct_car));
B=zeros(1,numel(distinct_car))*nan;
for i=1:numel(distinct_car)
%    A=randperm(numel(distinct_car));
    B(1,i)=distinct_car(1,A(1,i));
end
end

