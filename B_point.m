%B�ؼ��㵽����Ĳֿ��֮��ľ���
function B_point_dist = B_point(A,B,i)%i��ʾĿ��ֿ��
%A��ʾstore_street_to_street�ľ���
%B��ʾstore_load_to_street�ľ���
D1 = A(3,B(i,1));%D1��ʾB���ֿ���Ӧ�Ĺؼ���ľ���
D2 = B(i,3);%D2��ʾ�ֿ�㵽��Ӧ�ؼ��ڵ�ľ���
B_point_dist = D1+D2;%D�����⹤λ����ܾ���
end
