%仓库中任意仓库点之间的距离
function store_point_point_dist = store_point_point(A,B,i,j)
%i表起始仓库号
%j表示终止仓库号
%A表示store_street_to_street的矩阵
%B表示store_load_to_street的矩阵
if B(i,1)==B(j,1)%如果两个仓库点对应的关键点相同，则直接相减
    store_point_point_dist=abs(B(i,3)-B(j,3));
else
    D1=A(B(i,1),B(j,1));%D1表示仓库中关键节点之间的距离
    D2=B(i,3);%D2表示起始仓库点到对应关键节点的距离
    D3=B(j,3);%D3表示终止仓库点到对应关键节点的距离
    store_point_point_dist=D1+D2+D3;
end

