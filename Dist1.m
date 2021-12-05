%dist1表示一辆车在I区和II区的配送距离


function dist1=Dist1(A)%A是一辆车的方案
%street_to_street = xlsread('道路关键节点之间距离矩阵.xlsx','B2:L12');
%load_to_street = xlsread('工位到对应关键点的距离.xlsx','sheet1','A2:C49');
global load_to_street
global street_to_street

D1=D_point(street_to_street,load_to_street,A(1,1));%D1表示D到I区或者II区的第一个工位点的距离
D3=0;
for i=1:numel(A)-1
    D2=point_point(street_to_street,load_to_street,A(1,i),A(1,i+1));%D2表示配送方案中相邻工位点之间的距离
    D3=D2+D3;%D3表示方案中工位点所走的总距离
end
dist1=D1+D3;%dist1表示从D点出发完成配送方案的总距离
end


