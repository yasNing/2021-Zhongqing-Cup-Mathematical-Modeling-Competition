function sum_dist = Sum_dist(car)%car表示10辆车的任务分配，A表示仓库号与工位号的对应

D3 = 0;
sum_dist = 0;
for i=1:10
    D1=Dist1(car{1,i});%I区和II区配送的总距离
    D2=Dist2(car{1,i});%III区取货的总距离
    D3=D1+D2;
    sum_dist=sum_dist+D3;
    end
   
end
