 %任务2 car6
function car= assign_mission_1_renwu2_car6()
%m表示车数6
m=6;
%n表示工位号数19
n=19;
%car=randperm(6)
car=cell(1,6);
%gongwei=randperm(19)
global mission2
k=randperm(n);
for i=1:n
    x=rand(1);
    if x<1/6
        if numel(car{1,1})>=4
            car{1,2}(end+1)=mission2(k(1,i),2);
        else
            car{1,1}(end+1)=mission2(k(1,i),2);
        end
        else if ((x>=1/6) && (x<2/6))
                 if numel(car{1,2})>=4
                     car{1,3}(end+1)=mission2(k(1,i),2);
                 else
                     car{1,2}(end+1)=mission2(k(1,i),2);
                 end
                 else if  ((x>=2/6) && (x<3/6))
                         if numel(car{1,3})>=4
                             car{1,4}(end+1)=mission2(k(1,i),2);
                         else
                                 car{1,3}(end+1)=mission2(k(1,i),2);
                         end
                         else if  ((x>=3/6) && (x<4/6))
                                 if numel(car{1,4})>=4
                                     car{1,5}(end+1)=mission2(k(1,i),2);
                                 else
                                     car{1,4}(end+1)=mission2(k(1,i),2);
                                 end
                                 else if  (x>=4/6 && x<5/6)
                                         if numel(car{1,5})>=4
                                             car{1,6}(end+1)=mission2(k(1,i),2);
                                         else
                                                 car{1,5}(end+1)=mission2(k(1,i),2);
                                         end
                                         else if  (x>=5/6 && x<=1)
                                                 if numel(car{1,6})>=4
                                                     car{1,1}(end+1)=mission2(k(1,i),2);
                                                 else
                                                         car{1,6}(end+1)=mission2(k(1,i),2);
                                              end
                                          end
                                     end
                             end
                     end
            end
    end
end
for i=1:6
    if numel(car{1,i})>4
        for j=1:6
            if (numel(car{1,j})<4 && numel(car{1,i})~=0)
                car{1,j}(end+1)=car{1,i}(end);
                car{1,i}(end)=[];
            end
        end
    end
end
end
