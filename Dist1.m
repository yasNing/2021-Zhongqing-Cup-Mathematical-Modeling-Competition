%dist1��ʾһ������I����II�������;���


function dist1=Dist1(A)%A��һ�����ķ���
%street_to_street = xlsread('��·�ؼ��ڵ�֮��������.xlsx','B2:L12');
%load_to_street = xlsread('��λ����Ӧ�ؼ���ľ���.xlsx','sheet1','A2:C49');
global load_to_street
global street_to_street

D1=D_point(street_to_street,load_to_street,A(1,1));%D1��ʾD��I������II���ĵ�һ����λ��ľ���
D3=0;
for i=1:numel(A)-1
    D2=point_point(street_to_street,load_to_street,A(1,i),A(1,i+1));%D2��ʾ���ͷ��������ڹ�λ��֮��ľ���
    D3=D2+D3;%D3��ʾ�����й�λ�����ߵ��ܾ���
end
dist1=D1+D3;%dist1��ʾ��D�����������ͷ������ܾ���
end


