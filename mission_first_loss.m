function sum_loss_final = mission_first_loss()
%��һ��
global mission1

%street_to_street��ʾI����II���Ĺؼ���֮�����
global street_to_street


%load_to_street��ʾI����II����λ����Ӧ�ؼ���ľ���
global load_to_street

B1=mission1(:,2);
car=cell(1,2);
A1=randperm(8);

for i=1:4
    car{1,1}(1,i)=B1(A1(1,i),1);
    car{1,2}(1,i)=B1(A1(1,i+4),1);
end

%assign_mission1()
%car{1,1}
%car{1,2}
%mission1(A1(1,1),3)

%������I II���ڵľ���
%D1=D_point(street_to_street,load_to_street,car{1,1}(1,1));
%D2= point_point(street_to_street,load_to_street,car{1,1}(1,2),car{1,1}(1,3));

%������ I II���ڵ�ʱ��
%ȥ��distinct_car
car_new=cell(1,2);
car_new{1,1}=distinct_car(car{1,1});
car_new{1,2}=distinct_car(car{1,2});
%car_new{1,1}
%car_new{1,2}
%����III����ȡ����D�ľ���
D1 = Dist2(car_new{1,1});%��һ�����Ӳֿ���B�������ȡ����󷵻ص�D��ľ���
D2 = Dist2(car_new{1,2});%�ڶ������Ӳֿ���B�������ȡ����󷵻ص�D��ľ���
%����III������ʱ��
T1=time_road(D1)+time_load(car_new{1,1});%t1Ϊ��һ����ȡ���ص�b�����õ�ʱ��
T2=time_road(D2)+time_load(car_new{1,2});%t2Ϊ�ڶ�����ȡ���ص�b�����õ�ʱ��

%����һ���ķ���
%����I����II����ʱ��
%��������ʱ�ľ�����ʱ�䣬����û��ȥ�ص�car1
%���㿪ʼB����һ������ʧʱ��
D3=D_point(street_to_street,load_to_street,car{1,1}(1,1));%D3���������ĵ�һ����λ�ŵľ���
t2=time_road(D3)+T1+3;%t2��ʾ��B�������װ����ϣ����͵���һ����λ���ʱ��
t22=t2-mission1(A1(1,1),3);%���㵽��һ����λ�����Ӧ������ʱ��Ĳ�
%loss_ex(t22);
sum_loss1=[];
sum_loss1(1,1)=loss_ex(t22);%�����һ����λ���ʱ����ʧ

%��������ʱ�ľ�����ʱ�䣬����û��ȥ�ص�car1
%��������������λ���ʱ����ʧ
for i=1:3
D=point_point(street_to_street,load_to_street,car{1,1}(1,i),car{1,1}(1,1+i));

T=time_road(D)+t2+3;%��ʼ��i+1����λ������ʱ��
t=T-mission1(A1(1,i+1),3);%���㵽��i+1����λ�����Ӧ������ʱ��Ĳ�
%loss_ex(t22);
sum_loss1(1,i+1)=loss_ex(t);%�����i+1��λ���ʱ����ʧ
end
sum_loss1;


%�����ķ���
%����I����II����ʱ��
%��������ʱ�ľ�����ʱ�䣬����û��ȥ�ص�car1
%���㿪ʼB����һ������ʧʱ��
D3=D_point(street_to_street,load_to_street,car{1,2}(1,1));%D3���������ĵ�һ����λ�ŵľ���
t2=time_road(D3)+T2+3;%t2��ʾ��B�������װ����ϣ����͵���һ����λ���ʱ��
t22=t2-mission1(A1(1,5),3);%���㵽��һ����λ�����Ӧ������ʱ��Ĳ�
%loss_ex(t22);
sum_loss2=[];
sum_loss2(1,1)=loss_ex(t22);%�����һ����λ���ʱ����ʧ

%��������ʱ�ľ�����ʱ�䣬����û��ȥ�ص�car1
%��������������λ���ʱ����ʧ
for i=1:3
D=point_point(street_to_street,load_to_street,car{1,2}(1,i),car{1,2}(1,i+1));

T=time_road(D)+t2+3;%��ʼ��i+5����λ������ʱ��
t=T-mission1(A1(1,i+5),3);%���㵽��i+5����λ�����Ӧ������ʱ��Ĳ�
%loss_ex(t22);
sum_loss2(1,i+1)=loss_ex(t);%�����i+1��λ���ʱ����ʧ
end
sum_loss2;
sum_loss_final=[];
for i=1:4
    sum_loss_final(1,i)=car{1,1}(1,i);
    sum_loss_final(1,i+4)=car{1,2}(1,i);
    sum_loss_final(2,i)=sum_loss1(1,i);
    sum_loss_final(2,i+4)=sum_loss2(1,i);
end
%sum_loss_final
end

