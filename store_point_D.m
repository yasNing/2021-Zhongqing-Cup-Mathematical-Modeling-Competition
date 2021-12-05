%任意仓库点到D点的距离
function store_point_D_dist = store_point_D(A,B,i)
%i表起始仓库号
%A表示store_street_to_street的矩阵
%B表示store_load_to_street的矩阵
 D1 = B(i,3);%D1表示起始仓库点到对应关键节点的距离
 D2 = A(B(i,1),6);%D2表示仓库对应关键点到C关键节点的距离
 D3 = 30;%D3表示C关键点到D关键点之间的距离    
 store_point_D_dist=D1+D2+D3;
end
