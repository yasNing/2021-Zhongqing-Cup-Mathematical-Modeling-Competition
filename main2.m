
%第一题
global mission1
mission1 = xlsread('三个任务.xlsx','A4:C11');

%street_to_street表示I区和II区的关键点之间距离
global street_to_street
street_to_street = xlsread('道路关键节点之间距离矩阵.xlsx','B2:L12');

%load_to_street表示I区和II区工位到对应关键点的距离
global load_to_street
load_to_street = xlsread('工位到对应关键点的距离.xlsx','A2:C49');

%store_street_to_street表III区工位到对应关键点的距离
global store_street_to_street 
store_street_to_street = xlsread('仓库道路关键节点之间的距离.xlsx','B2:G7');

%store_load_to_street表III区工位到对应关键点的距离
global store_load_to_street 
store_load_to_street = xlsread('仓库中仓库点到对应关键节点的距离.xlsx','A2:C25');

%工位号与仓库号之间的对应
global Store_connect_point
Store_connect_point = xlsread('工位点对应仓库号.xlsx','A2:B49');




%%参数初始化
TO = 1000;     %初始温度
T = TO;        %迭代中温度会发生改变,第一次迭代时温度就是TO
maxgen = 2000;  %最大迭代次数
Lk = 100;      %每个温度下的迭代次数
alfa = 0.95;   %温度衰减系数


%%随机生成一-个初始解
way0=mission_first_loss();

%%初始化用来保存中间结果的购买方案和花费
%iter_car = car0;
iter_Sum = way0;%
%iter_ning=  Sum_dist(car0);
%%模拟退火过程
for iter= 1 : maxgen %外循环,我这里采用的是指定最大迭代次数 
    %disp('结束一次外循环');
    for i= 1:Lk %内循环，在每个温度下开始迭代 
     %disp('结束一次内循环');
     Sum0 = sum(way0(2,:)) ;%计算这个方案的花费
      way1=mission_first_loss();%生成新的方案
     Sum1 =sum(way1(2,:)) ; %计算新方案的花费
     if Sum1 < Sum0
     %如果新方案的损失小于当前方案的花费
      way0 = way1; %更新当前方案为新方案
      %iter_car = [iter_car; car1]; %将新找到的way1添加到中间结果中
      iter_Sum = [iter_Sum; way1]; %将新找到的way1添加到中间结果中
     else
      p = exp(-(Sum1 - Sum0)/T); %根据Metropolis准则计算一个概率
      if rand(1) < p %生成-个随机数和这个概率比较，如果该随机数小于这个概率
      way0 = way1; %更新当前方案为新方案
      end
     end
   end
T=alfa*T;%温度下降
  %plot(iter,Sum0,'r.')
  %hold on
  %if mod(Sum0,5)==0
     % iter_ning = [iter_ning; Sum0];
  %end
end
disp('每个方案')

%iter_Sum

%disp('最优点和损失')

%for i=1:100000
   %if best_dist= min(sum(iter_Sum(2,:))); %找到最小的花费的值
        %best_dist==iter_Sum(i+1,:)
      % disp(iter_Sum(i,:))
    %end
%end

%for i=1:10
 % car0{1,i}
%end
%disp('最佳的方案是: '); 
%best_dist= min(sum(iter_Sum(2,:))); 
disp('此时最优解是'); 
%disp(best_dist)
