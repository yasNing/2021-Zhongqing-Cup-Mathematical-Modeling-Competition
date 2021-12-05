%B关键点到任意的仓库点之间的距离
function B_point_dist = B_point(A,B,i)%i表示目标仓库点
%A表示store_street_to_street的矩阵
%B表示store_load_to_street的矩阵
D1 = A(3,B(i,1));%D1表示B到仓库点对应的关键点的距离
D2 = B(i,3);%D2表示仓库点到对应关键节点的距离
B_point_dist = D1+D2;%D到任意工位点的总距离
end
