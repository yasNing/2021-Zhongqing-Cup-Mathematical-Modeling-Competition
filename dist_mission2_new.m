%传入一个小车的方案 计算所需要的的距离
%此小车的配送工位点数小于等于4
function dist_mission2_new = dist_mission2_new(car)  
%dist表示返回的距离  car表示一个车的方案
%dist=取货距离 加 送货距离 （有可能有二次取货）
global mission3

global street_to_street
global load_to_street


m=numel(car);% m表示分配到的任务个数
if m==0
    dist_mission2_new=0;
end

if m~=0
    sum_loss2=zeros(1,m-1)*nan;
    %计算任意两个工位点的时间损失
    %d1表示 取货距离
d1=Dist2(car);
%t1取货的总时间
t1=time_road(d1)+time_load( distinct_car(car));
%d2表示送货到第一个工位点的距离
d2=D_point(street_to_street,load_to_street,car(1,1));
t2=time_road(d2)+t1+3;%t2表示从B点出发，装货完毕，运送到第一个工位点的时间
[m1,n1]=find(mission3(:,2)==car(1,1));%m1记录的所给方案第一个点所在行
%disp('diyige');
%dist_mission2 = mission2(m1,3)
t22 = t2-mission3(m1,3);%计算到第一个工位点与对应的需求时间的差
sum_loss1=loss_ex(t22);%sum_loss1是一个数
%sum_loss1;%计算第一个工位点的时间损失并输出
    
    T=t2;
    
       
if ((m~=1) && (m~=0) && (m<=4))
    for i=1:m-1
        D=point_point(street_to_street,load_to_street,car(1,i),car(1,1+i));
        T=time_road(D)+T+3;%开始到i+1个工位点所需时间
        [m2,n2]=find(mission3(:,2)==car(1,i+1));

        t=T-mission3(m2,3);%计算到第i+1个工位点与对应的需求时间的差

        sum_loss2(1,i)=loss_ex(t);%计算第i+1工位点的时间损失
    end

end
dist_mission2_new=sum_loss1+sum(sum_loss2(1,:));%总损失风险
end

   



end

