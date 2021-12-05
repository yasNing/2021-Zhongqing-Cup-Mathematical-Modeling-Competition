%次函数表示该小车需要二次运输的情况，计算所需要的的距离
%因为此函数存在二次运输问题，所以经过分配，每个车对应的工位点不超过7个
function dist_mission3 = dist_mission3(car)  %dist表示返回的距离  car表示一个车的方案
global mission2;
global street_to_street;
global load_to_street;

m=numel(car);% m表示分配到的任务个数
sum_loss1=zeros(1,2)*nan;
sum_loss1=dist_mission2(car(1,1:4));%前四个工位点的所用时间与总损失风险和调用dist_mission2来进行计算
%计算运送四个工位后返回到B点的时间
d1=D_point(street_to_street,load_to_street,car(1,4))+30;%d1表示第四个工位点到B点的距离
%第四工位点到B点所需时间
t1=time_road(d1);

car1=zeros(1,m-4)*nan;
%将剩余的工位点赋值给新的矩阵
%剩余的工位点不超过3个
for i=1:m-4
    car1(1:i)=car(1,i+4);
end

 %d2表示取货到D点的距离
    d2=Dist2(car1);
    %t1取货的总时间
    t2=time_road(d2)+time_load(distinct_car(car1))+t1+sum_loss1(1,1);
    %d3表示第二次运输送货到第一个工位点的距离
    d3=D_point(street_to_street,load_to_street,car1(1,1));
    t3=time_road(d3)+t2+3;%t3表示从B点出发，装货完毕，运送到第二次第一个工位点的时间
    [m1,n]=find(mission2(:,2)==car1(1,1));
    %disp('diyige');
    %dist_mission2 = mission2(m,3)
    t33=t3-mission2(m1,3);%计算到第二次第一个工位点与对应的需求时间的差
    %loss_ex(t22);
    sum_loss2=loss_ex(t33);%是一个数
    sum_loss2;%计算第二次第一个工位点的时间损失并输出
    
    %计算任意两个工位点的时间损失
    m2=numel(car1);
    sum_loss3=zeros(1,m2-1)*nan;
    T=t3;
    for i=1:m2-1
        D=point_point(street_to_street,load_to_street,car1(1,i),car1(1,1+i));
        T=time_road(D)+T+3;%开始到第二次第i+1个工位点所需时间
        [m3,n]=find(mission2(:,2)==car1(1,i+1));
        %disp('dierge');
        %dist_mission2 = mission2(m3,3)
        t=T-mission2(m3,3);%计算到第二次第i+1个工位点与对应的需求时间的差
        %loss_ex(t22);
        
        sum_loss3(1,i)=loss_ex(t);%计算第i+1工位点的时间损失
    end
   % sum_loss3;%剩余工位点的损失
    %总风险损失
   dist_mission3=sum(sum_loss1(1,2))+sum_loss2+sum(sum_loss3(1,:));
end








