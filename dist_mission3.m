%�κ�����ʾ��С����Ҫ����������������������Ҫ�ĵľ���
%��Ϊ�˺������ڶ����������⣬���Ծ������䣬ÿ������Ӧ�Ĺ�λ�㲻����7��
function dist_mission3 = dist_mission3(car)  %dist��ʾ���صľ���  car��ʾһ�����ķ���
global mission2;
global street_to_street;
global load_to_street;

m=numel(car);% m��ʾ���䵽���������
sum_loss1=zeros(1,2)*nan;
sum_loss1=dist_mission2(car(1,1:4));%ǰ�ĸ���λ�������ʱ��������ʧ���պ͵���dist_mission2�����м���
%���������ĸ���λ�󷵻ص�B���ʱ��
d1=D_point(street_to_street,load_to_street,car(1,4))+30;%d1��ʾ���ĸ���λ�㵽B��ľ���
%���Ĺ�λ�㵽B������ʱ��
t1=time_road(d1);

car1=zeros(1,m-4)*nan;
%��ʣ��Ĺ�λ�㸳ֵ���µľ���
%ʣ��Ĺ�λ�㲻����3��
for i=1:m-4
    car1(1:i)=car(1,i+4);
end

 %d2��ʾȡ����D��ľ���
    d2=Dist2(car1);
    %t1ȡ������ʱ��
    t2=time_road(d2)+time_load(distinct_car(car1))+t1+sum_loss1(1,1);
    %d3��ʾ�ڶ��������ͻ�����һ����λ��ľ���
    d3=D_point(street_to_street,load_to_street,car1(1,1));
    t3=time_road(d3)+t2+3;%t3��ʾ��B�������װ����ϣ����͵��ڶ��ε�һ����λ���ʱ��
    [m1,n]=find(mission2(:,2)==car1(1,1));
    %disp('diyige');
    %dist_mission2 = mission2(m,3)
    t33=t3-mission2(m1,3);%���㵽�ڶ��ε�һ����λ�����Ӧ������ʱ��Ĳ�
    %loss_ex(t22);
    sum_loss2=loss_ex(t33);%��һ����
    sum_loss2;%����ڶ��ε�һ����λ���ʱ����ʧ�����
    
    %��������������λ���ʱ����ʧ
    m2=numel(car1);
    sum_loss3=zeros(1,m2-1)*nan;
    T=t3;
    for i=1:m2-1
        D=point_point(street_to_street,load_to_street,car1(1,i),car1(1,1+i));
        T=time_road(D)+T+3;%��ʼ���ڶ��ε�i+1����λ������ʱ��
        [m3,n]=find(mission2(:,2)==car1(1,i+1));
        %disp('dierge');
        %dist_mission2 = mission2(m3,3)
        t=T-mission2(m3,3);%���㵽�ڶ��ε�i+1����λ�����Ӧ������ʱ��Ĳ�
        %loss_ex(t22);
        
        sum_loss3(1,i)=loss_ex(t);%�����i+1��λ���ʱ����ʧ
    end
   % sum_loss3;%ʣ�๤λ�����ʧ
    %�ܷ�����ʧ
   dist_mission3=sum(sum_loss1(1,2))+sum_loss2+sum(sum_loss3(1,:));
end








