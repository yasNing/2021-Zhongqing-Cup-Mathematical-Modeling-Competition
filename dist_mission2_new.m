%����һ��С���ķ��� ��������Ҫ�ĵľ���
%��С�������͹�λ����С�ڵ���4
function dist_mission2_new = dist_mission2_new(car)  
%dist��ʾ���صľ���  car��ʾһ�����ķ���
%dist=ȡ������ �� �ͻ����� ���п����ж���ȡ����
global mission3

global street_to_street
global load_to_street


m=numel(car);% m��ʾ���䵽���������
if m==0
    dist_mission2_new=0;
end

if m~=0
    sum_loss2=zeros(1,m-1)*nan;
    %��������������λ���ʱ����ʧ
    %d1��ʾ ȡ������
d1=Dist2(car);
%t1ȡ������ʱ��
t1=time_road(d1)+time_load( distinct_car(car));
%d2��ʾ�ͻ�����һ����λ��ľ���
d2=D_point(street_to_street,load_to_street,car(1,1));
t2=time_road(d2)+t1+3;%t2��ʾ��B�������װ����ϣ����͵���һ����λ���ʱ��
[m1,n1]=find(mission3(:,2)==car(1,1));%m1��¼������������һ����������
%disp('diyige');
%dist_mission2 = mission2(m1,3)
t22 = t2-mission3(m1,3);%���㵽��һ����λ�����Ӧ������ʱ��Ĳ�
sum_loss1=loss_ex(t22);%sum_loss1��һ����
%sum_loss1;%�����һ����λ���ʱ����ʧ�����
    
    T=t2;
    
       
if ((m~=1) && (m~=0) && (m<=4))
    for i=1:m-1
        D=point_point(street_to_street,load_to_street,car(1,i),car(1,1+i));
        T=time_road(D)+T+3;%��ʼ��i+1����λ������ʱ��
        [m2,n2]=find(mission3(:,2)==car(1,i+1));

        t=T-mission3(m2,3);%���㵽��i+1����λ�����Ӧ������ʱ��Ĳ�

        sum_loss2(1,i)=loss_ex(t);%�����i+1��λ���ʱ����ʧ
    end

end
dist_mission2_new=sum_loss1+sum(sum_loss2(1,:));%����ʧ����
end

   



end

