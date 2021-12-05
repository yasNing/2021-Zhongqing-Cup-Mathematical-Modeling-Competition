function sum_loss_new = sum_loss_new(car)
%car为一个单元矩阵（元胞数组）
sum_loss_new=0;
for i=1:9
    sum_loss_new=sum_loss_new+sum(dist_mission2_new(car{1,i}));
end
end

