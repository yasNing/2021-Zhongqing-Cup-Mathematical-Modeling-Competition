%dist2��ʾһ������III�������;���
function dist2=Dist2(A)%A�Ǹ�һ�����ķ���
global store_street_to_street
global store_load_to_street
%store_street_to_street��III����λ����Ӧ�ؼ���ľ���
%store_street_to_street = xlsread('�ֿ��·�ؼ��ڵ�֮��ľ���.xlsx','sheet1','B2:G7');
%store_load_to_street��III����λ����Ӧ�ؼ���ľ���
%store_load_to_street = xlsread('�ֿ��вֿ�㵽��Ӧ�ؼ��ڵ�ľ���.xlsx','sheet1','A2:C25');
if numel(A)==0
    dist2=0;
else
A=distinct_car(A);%A��ʾû���ظ��Ĳֿ��

D1 = B_point(store_street_to_street,store_load_to_street,A(1,1));%D1��ʾB�ؼ��㵽�����е�һ���ֿ��ľ���
D3 = 0;
for i=1:numel(A)-1
    D2 = store_point_point(store_street_to_street,store_load_to_street,A(1,i),A(1,i+1));%D2��ʾ���ͷ����вֿ��֮��ľ���
    D3 = D2+D3;%D3��ʾ�����и��ֿ�����ߵ��ܾ���
end
D4 = store_point_D(store_street_to_street,store_load_to_street,A(1,numel(A)));%D4��ʾ���������һ���ֿ�㵽D��ľ���
dist2=D1+D3+D4;%dist2��ʾ��B�ؼ���������ȡ����ص�D�ؼ�����ܾ���
end
end

