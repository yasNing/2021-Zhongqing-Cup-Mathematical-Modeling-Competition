%dist2表示一辆车在III区的配送距离
function dist2=Dist2(A)%A是个一辆车的方案
global store_street_to_street
global store_load_to_street
%store_street_to_street表III区工位到对应关键点的距离
%store_street_to_street = xlsread('仓库道路关键节点之间的距离.xlsx','sheet1','B2:G7');
%store_load_to_street表III区工位到对应关键点的距离
%store_load_to_street = xlsread('仓库中仓库点到对应关键节点的距离.xlsx','sheet1','A2:C25');
if numel(A)==0
    dist2=0;
else
A=distinct_car(A);%A表示没有重复的仓库点

D1 = B_point(store_street_to_street,store_load_to_street,A(1,1));%D1表示B关键点到方案中第一个仓库点的距离
D3 = 0;
for i=1:numel(A)-1
    D2 = store_point_point(store_street_to_street,store_load_to_street,A(1,i),A(1,i+1));%D2表示配送方案中仓库点之间的距离
    D3 = D2+D3;%D3表示方案中各仓库点所走的总距离
end
D4 = store_point_D(store_street_to_street,store_load_to_street,A(1,numel(A)));%D4表示方案中最后一个仓库点到D点的距离
dist2=D1+D3+D4;%dist2表示从B关键点出发完成取货后回到D关键点的总距离
end
end

