%�ֿ�������ֿ��֮��ľ���
function store_point_point_dist = store_point_point(A,B,i,j)
%i����ʼ�ֿ��
%j��ʾ��ֹ�ֿ��
%A��ʾstore_street_to_street�ľ���
%B��ʾstore_load_to_street�ľ���
if B(i,1)==B(j,1)%��������ֿ���Ӧ�Ĺؼ�����ͬ����ֱ�����
    store_point_point_dist=abs(B(i,3)-B(j,3));
else
    D1=A(B(i,1),B(j,1));%D1��ʾ�ֿ��йؼ��ڵ�֮��ľ���
    D2=B(i,3);%D2��ʾ��ʼ�ֿ�㵽��Ӧ�ؼ��ڵ�ľ���
    D3=B(j,3);%D3��ʾ��ֹ�ֿ�㵽��Ӧ�ؼ��ڵ�ľ���
    store_point_point_dist=D1+D2+D3;
end

