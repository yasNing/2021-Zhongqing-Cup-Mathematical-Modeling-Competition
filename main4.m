global street_to_street
street_to_street = xlsread('��·�ؼ��ڵ�֮��������.xlsx','B2:L12');

global mission3
mission3 = xlsread('��������.xlsx','M4:O26');

global mission2
mission2 = xlsread('��������.xlsx','F4:H22');

global mission1
mission1 = xlsread('��������.xlsx','A4:C11');

%load_to_street��ʾI����II����λ����Ӧ�ؼ���ľ���
global load_to_street
load_to_street = xlsread('��λ����Ӧ�ؼ���ľ���.xlsx','A2:C49');

%store_street_to_street��III����λ����Ӧ�ؼ���ľ���
global store_street_to_street 
store_street_to_street = xlsread('�ֿ��·�ؼ��ڵ�֮��ľ���.xlsx','B2:G7');

%store_load_to_street��III����λ����Ӧ�ؼ���ľ���
global store_load_to_street 
store_load_to_street = xlsread('�ֿ��вֿ�㵽��Ӧ�ؼ��ڵ�ľ���.xlsx','A2:C25');

%��λ����ֿ��֮��Ķ�Ӧ
global Store_connect_point
Store_connect_point = xlsread('��λ���Ӧ�ֿ��.xlsx','A2:B49');


%car0=assign_mission_1_renwu2_car6();

%for i=1:6
  % car0{1,i}
%%dist_mission2_new(car0{1,1})
 %sum_loss_new(car0)

%%ģ���˻�% 



%%������ʼ��
TO = 1000;     %��ʼ�¶�
T = TO;        %�������¶Ȼᷢ���ı�,��һ�ε���ʱ�¶Ⱦ���TO
maxgen = 1000;  %����������
Lk = 200;      %ÿ���¶��µĵ�������
alfa = 0.95;   %�¶�˥��ϵ��
haha=[];

%%�������һ-����ʼ��
car0=assign_mission_renwu3_car9();

sum_loss_new(car0);
%%��ʼ�����������м����Ĺ��򷽰��ͻ���
%iter_car = car0;
iter_Sum =  sum_loss_new(car0) ;%���������Լ�д��calculate_ money����������������Ļ���
%iter_ning=  Sum_dist(car0);
%%ģ���˻����
for iter= 1 : maxgen %��ѭ��,��������õ���ָ������������ 
   % disp('����һ����ѭ��');
    for i= 1:Lk %��ѭ������ÿ���¶��¿�ʼ���� 
    % disp('����һ����ѭ��');
     Sum0 = sum_loss_new(car0); %������������Ļ���
      car1=assign_mission_renwu3_car9();%�����µķ���
     Sum1 = sum_loss_new(car1); %�����·����Ļ���
     if Sum1 < Sum0
     %����·����Ļ���С�ڵ�ǰ�����Ļ���
      car0 = car1; %���µ�ǰ����Ϊ�·���
      %iter_car = [iter_car; car1]; %�����ҵ���way1��ӵ��м�����
      iter_Sum = [iter_Sum; Sum1]; %�����ҵ���Sum1��ӵ��м�����
     else
      p = exp(-(Sum1 - Sum0)/T); %����Metropolis׼�����һ������
      if rand(1) < p %����-���������������ʱȽϣ�����������С���������
      car0 = car1; %���µ�ǰ����Ϊ�·���
      end
     end
   end
T=alfa*T;%�¶��½�
minize=min(iter_Sum);
  if mod(iter,10)==0
     
      haha(end+1)=minize;
  end
  %plot(iter,Sum0,'r.')
  %hold on
  %if mod(Sum0,5)==0
      %iter_ning = [iter_ning; Sum0];
  %end
end

best_dist= min(iter_Sum); %�ҵ���С�Ļ��ѵ�ֵ
disp('��ѵķ�����: '); 
for i=1:9
  car0{1,i}
end
disp('��ʱ���Ž���'); disp(best_dist)
for i=1:length(haha)
    x=(1:length(haha));
    figure(2);
    hold on
  plot(x,haha,'-*b')
  hold on
end

%{
    x=zeros(1,100);
 i=[1:100]
   
    figure(2);
    hold on
  plot(i,x,'-*b')
  hold on
%}




