%D�ؼ��㵽����Ĺ�λ��֮��ľ���
function D_point_dist = D_point(A,B,i)%i��ʾĿ�깤λ��
%A��ʾstreet_to_street�ľ���
%B��ʾload_to_street�ľ���
D1 = A(1,B(i,1));%D1��ʾD��Ŀ�깤λ�Ŷ�Ӧ�Ĺؼ���ľ���
D2 = B(i,3);%D2��ʾ��λ�㵽��Ӧ�ؼ��ڵ�ľ���
D_point_dist = D1+D2;%D�����⹤λ����ܾ���
end



