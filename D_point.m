%D关键点到任意的工位点之间的距离
function D_point_dist = D_point(A,B,i)%i表示目标工位号
%A表示street_to_street的矩阵
%B表示load_to_street的矩阵
D1 = A(1,B(i,1));%D1表示D到目标工位号对应的关键点的距离
D2 = B(i,3);%D2表示工位点到对应关键节点的距离
D_point_dist = D1+D2;%D到任意工位点的总距离
end



