%хннЯ2 car7
function car= assign_mission_renwu2_car7()

m=7;

n=19;

car=cell(1,7);

global mission2

for i=1:n
    x=rand(1);
    if x<1/7
        if numel(car{1,1})>=4
            car{1,2}(end+1)=mission2(i,2);
        else
            car{1,1}(end+1)=mission2(i,2);
        end
        else if ((x>=1/7) && (x<2/7))
                 if numel(car{1,2})>=4
                     car{1,3}(end+1)=mission2(i,2);
                 else
                     car{1,2}(end+1)=mission2(i,2);
                 end
                 else if  ((x>=2/7) && (x<3/7))
                         if numel(car{1,3})>=4
                             car{1,4}(end+1)=mission2(i,2);
                         else
                                 car{1,3}(end+1)=mission2(i,2);
                         end
                         else if  ((x>=3/7) && (x<4/7))
                                 if numel(car{1,4})>=4
                                     car{1,5}(end+1)=mission2(i,2);
                                 else
                                     car{1,4}(end+1)=mission2(i,2);
                                 end
                                 else if  (x>=4/7 && x<5/7)
                                         if numel(car{1,5})>=4
                                             car{1,6}(end+1)=mission2(i,2);
                                         else
                                                 car{1,5}(end+1)=mission2(i,2);
                                         end
                                         else if  (x>=5/7 && x<6/7)
                                                 if numel(car{1,6})>=4
                                                     car{1,7}(end+1)=mission2(i,2);
                                                 else
                                                         car{1,6}(end+1)=mission2(i,2);
                                                 end
                                             else if (x>=6/7 && x<7/7)
                                                     if numel(car{1,7})>=4
                                                         car{1,1}(end+1)=mission2(i,2);
                                                     else
                                                         car{1,7}(end+1)=mission2(i,2);
                                                     end
                                              end
                                          end
                                     end
                             end
                     end
            end
    end
end
for i=1:7
    if numel(car{1,i})>4
        for j=1:7
            if (numel(car{1,j})<4 && numel(car{1,i})~=0)
                car{1,j}(end+1)=car{1,i}(end);
                car{1,i}(end)=[];
            end
        end
    end
end
end

