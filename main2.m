
%��һ��
global mission1
mission1 = xlsread('��������.xlsx','A4:C11');

%street_to_street��ʾI����II���Ĺؼ���֮�����
global street_to_street
street_to_street = xlsread('��·�ؼ��ڵ�֮��������.xlsx','B2:L12');

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




%%������ʼ��
TO = 1000;     %��ʼ�¶�
T = TO;        %�������¶Ȼᷢ���ı�,��һ�ε���ʱ�¶Ⱦ���TO
maxgen = 2000;  %����������
Lk = 100;      %ÿ���¶��µĵ�������
alfa = 0.95;   %�¶�˥��ϵ��


%%�������һ-����ʼ��
way0=mission_first_loss();

%%��ʼ�����������м����Ĺ��򷽰��ͻ���
%iter_car = car0;
iter_Sum = way0;%
%iter_ning=  Sum_dist(car0);
%%ģ���˻����
for iter= 1 : maxgen %��ѭ��,��������õ���ָ������������ 
    %disp('����һ����ѭ��');
    for i= 1:Lk %��ѭ������ÿ���¶��¿�ʼ���� 
     %disp('����һ����ѭ��');
     Sum0 = sum(way0(2,:)) ;%������������Ļ���
      way1=mission_first_loss();%�����µķ���
     Sum1 =sum(way1(2,:)) ; %�����·����Ļ���
     if Sum1 < Sum0
     %����·�������ʧС�ڵ�ǰ�����Ļ���
      way0 = way1; %���µ�ǰ����Ϊ�·���
      %iter_car = [iter_car; car1]; %�����ҵ���way1��ӵ��м�����
      iter_Sum = [iter_Sum; way1]; %�����ҵ���way1��ӵ��м�����
     else
      p = exp(-(Sum1 - Sum0)/T); %����Metropolis׼�����һ������
      if rand(1) < p %����-���������������ʱȽϣ�����������С���������
      way0 = way1; %���µ�ǰ����Ϊ�·���
      end
     end
   end
T=alfa*T;%�¶��½�
  %plot(iter,Sum0,'r.')
  %hold on
  %if mod(Sum0,5)==0
     % iter_ning = [iter_ning; Sum0];
  %end
end
disp('ÿ������')

%iter_Sum

%disp('���ŵ����ʧ')

%for i=1:100000
   %if best_dist= min(sum(iter_Sum(2,:))); %�ҵ���С�Ļ��ѵ�ֵ
        %best_dist==iter_Sum(i+1,:)
      % disp(iter_Sum(i,:))
    %end
%end

%for i=1:10
 % car0{1,i}
%end
%disp('��ѵķ�����: '); 
%best_dist= min(sum(iter_Sum(2,:))); 
disp('��ʱ���Ž���'); 
%disp(best_dist)
