function sum_loss_final = mission_first_loss()
%第一个
global mission1

%street_to_street表示I区和II区的关键点之间距离
global street_to_street


%load_to_street表示I区和II区工位到对应关键点的距离
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

%计算在I II区内的距离
%D1=D_point(street_to_street,load_to_street,car{1,1}(1,1));
%D2= point_point(street_to_street,load_to_street,car{1,1}(1,2),car{1,1}(1,3));

%计算在 I II区内的时间
%去重distinct_car
car_new=cell(1,2);
car_new{1,1}=distinct_car(car{1,1});
car_new{1,2}=distinct_car(car{1,2});
%car_new{1,1}
%car_new{1,2}
%计算III区中取货到D的距离
D1 = Dist2(car_new{1,1});%第一辆车从仓库中B点出发，取完货后返回到D点的距离
D2 = Dist2(car_new{1,2});%第二辆车从仓库中B点出发，取完货后返回到D点的距离
%计算III中所用时间
T1=time_road(D1)+time_load(car_new{1,1});%t1为第一辆车取货回到b点所用的时间
T2=time_road(D2)+time_load(car_new{1,2});%t2为第二辆车取货回到b点所用的时间

%计算一车的风险
%计算I区与II区的时间
%计算配送时的距离与时间，调用没有去重的car1
%计算开始B到第一个所损失时间
D3=D_point(street_to_street,load_to_street,car{1,1}(1,1));%D3到配送区的第一个工位号的距离
t2=time_road(D3)+T1+3;%t2表示从B点出发，装货完毕，运送到第一个工位点的时间
t22=t2-mission1(A1(1,1),3);%计算到第一个工位点与对应的需求时间的差
%loss_ex(t22);
sum_loss1=[];
sum_loss1(1,1)=loss_ex(t22);%计算第一个工位点的时间损失

%计算配送时的距离与时间，调用没有去重的car1
%计算任意两个工位点的时间损失
for i=1:3
D=point_point(street_to_street,load_to_street,car{1,1}(1,i),car{1,1}(1,1+i));

T=time_road(D)+t2+3;%开始到i+1个工位点所需时间
t=T-mission1(A1(1,i+1),3);%计算到第i+1个工位点与对应的需求时间的差
%loss_ex(t22);
sum_loss1(1,i+1)=loss_ex(t);%计算第i+1工位点的时间损失
end
sum_loss1;


%二车的风险
%计算I区与II区的时间
%计算配送时的距离与时间，调用没有去重的car1
%计算开始B到第一个所损失时间
D3=D_point(street_to_street,load_to_street,car{1,2}(1,1));%D3到配送区的第一个工位号的距离
t2=time_road(D3)+T2+3;%t2表示从B点出发，装货完毕，运送到第一个工位点的时间
t22=t2-mission1(A1(1,5),3);%计算到第一个工位点与对应的需求时间的差
%loss_ex(t22);
sum_loss2=[];
sum_loss2(1,1)=loss_ex(t22);%计算第一个工位点的时间损失

%计算配送时的距离与时间，调用没有去重的car1
%计算任意两个工位点的时间损失
for i=1:3
D=point_point(street_to_street,load_to_street,car{1,2}(1,i),car{1,2}(1,i+1));

T=time_road(D)+t2+3;%开始到i+5个工位点所需时间
t=T-mission1(A1(1,i+5),3);%计算到第i+5个工位点与对应的需求时间的差
%loss_ex(t22);
sum_loss2(1,i+1)=loss_ex(t);%计算第i+1工位点的时间损失
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

