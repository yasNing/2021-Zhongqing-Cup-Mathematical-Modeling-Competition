%����ֿ�㵽D��ľ���
function store_point_D_dist = store_point_D(A,B,i)
%i����ʼ�ֿ��
%A��ʾstore_street_to_street�ľ���
%B��ʾstore_load_to_street�ľ���
 D1 = B(i,3);%D1��ʾ��ʼ�ֿ�㵽��Ӧ�ؼ��ڵ�ľ���
 D2 = A(B(i,1),6);%D2��ʾ�ֿ��Ӧ�ؼ��㵽C�ؼ��ڵ�ľ���
 D3 = 30;%D3��ʾC�ؼ��㵽D�ؼ���֮��ľ���    
 store_point_D_dist=D1+D2+D3;
end
