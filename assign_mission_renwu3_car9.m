%хннЯ3  car9
function car= assign_mission_renwu3_car9()

m=9;

n=23;

car=cell(1,9);

global mission3
k=randperm(n);
for i=1:n
    x=rand(1);
    if x<1/9
        if numel(car{1,1})>=4
            car{1,2}(end+1)=mission3(k(1,i),2);
        else
            car{1,1}(end+1)=mission3(k(1,i),2);
        end
        else if ((x>=1/9) && (x<2/9))
                 if numel(car{1,2})>=4
                     car{1,3}(end+1)=mission3(k(1,i),2);
                 else
                     car{1,2}(end+1)=mission3(k(1,i),2);
                 end
                 else if  ((x>=2/9) && (x<3/9))
                         if numel(car{1,3})>=4
                             car{1,4}(end+1)=mission3(k(1,i),2);
                         else
                                 car{1,3}(end+1)=mission3(k(1,i),2);
                         end
                         else if  ((x>=3/9) && (x<4/9))
                                 if numel(car{1,4})>=4
                                     car{1,5}(end+1)=mission3(k(1,i),2);
                                 else
                                     car{1,4}(end+1)=mission3(k(1,i),2);
                                 end
                                 else if  (x>=4/9 && x<5/9)
                                         if numel(car{1,5})>=4
                                             car{1,6}(end+1)=mission3(k(1,i),2);
                                         else
                                                 car{1,5}(end+1)=mission3(k(1,i),2);
                                         end
                                         else if  (x>=5/9 && x<6/9)
                                                 if numel(car{1,6})>=4
                                                     car{1,7}(end+1)=mission3(k(1,i),2);
                                                 else
                                                         car{1,6}(end+1)=mission3(k(1,i),2);
                                                 end
                                                 else if (x>=6/9 && x<7/9)
                                                         if numel(car{1,7})>=4
                                                             car{1,8}(end+1)=mission3(k(1,i),2);
                                                         else
                                                             car{1,7}(end+1)=mission3(k(1,i),2);
                                                         end
                                                         else if (x>=7/9 && x<8/9)
                                                                 if numel(car{1,8})>=4
                                                                     car{1,9}(end+1)=mission3(k(1,i),2);
                                                                 else
                                                                         car{1,8}(end+1)=mission3(k(1,i),2);
                                                                 end
                                                             else if (x>=8/9 && x<9/9)
                                                                     if numel(car{1,9})>=4
                                                                         car{1,1}(end+1)=mission3(k(1,i),2);
                                                                     else
                                                                         car{1,9}(end+1)=mission3(k(1,i),2);
                                                                     end
                                                                 end
                                                             end
                                                     end
                                             end
                                     end
                             end
                     end
            end
    end
    end
for i=1:9
    if numel(car{1,i})>4
        for j=1:9
            if (numel(car{1,j})<4 && numel(car{1,i})~=0)
                car{1,j}(end+1)=car{1,i}(end);
                car{1,i}(end)=[];
            end
        end
    end
end
end