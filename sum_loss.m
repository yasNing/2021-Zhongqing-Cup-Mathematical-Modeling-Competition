function sum_loss = sum_loss (car)
%carΪһ����Ԫ����


loss1=0;
loss3=0;
for i=1:4
    if numel(car{1,i})<=4
        loss=dist_mission2(car{1,i});
        loss1=loss1+loss(1,2);
    else
        loss2=dist_mission3(car{1,i});
        loss3=loss2+loss3;
    end
   
    %sum_loss��ʾ�ܵ���ʧ
end
 sum_loss=loss1+loss3;
end

