function sum_loss_new = sum_loss_new(car)
%carΪһ����Ԫ����Ԫ�����飩
sum_loss_new=0;
for i=1:9
    sum_loss_new=sum_loss_new+sum(dist_mission2_new(car{1,i}));
end
end

