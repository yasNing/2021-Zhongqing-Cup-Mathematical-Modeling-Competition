function sum_dist = Sum_dist(car)%car��ʾ10������������䣬A��ʾ�ֿ���빤λ�ŵĶ�Ӧ

D3 = 0;
sum_dist = 0;
for i=1:10
    D1=Dist1(car{1,i});%I����II�����͵��ܾ���
    D2=Dist2(car{1,i});%III��ȡ�����ܾ���
    D3=D1+D2;
    sum_dist=sum_dist+D3;
    end
   
end
