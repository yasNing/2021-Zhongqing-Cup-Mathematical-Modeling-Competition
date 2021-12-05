%任务3  car8
function car= assign_mission_renwu3_car8()
%m表示车数8
m=8;

n=23;

car=cell(1,8);

global mission3
k=randperm(n);
for i=1:n
    x=rand(1);
    if x<1/8
        if numel(car{1,1})>=4
            car{1,2}(end+1)=mission3(k(1,i),2);
        else
            car{1,1}(end+1)=mission3(k(1,i),2);
        end
        else if ((x>=1/8) && (x<2/8))
                 if numel(car{1,2})>=4
                     car{1,3}(end+1)=mission3(k(1,i),2);
                 else
                     car{1,2}(end+1)=mission3(k(1,i),2);
                 end
                 else if  ((x>=2/8) && (x<3/8))
                         if numel(car{1,3})>=4
                             car{1,4}(end+1)=mission3(k(1,i),2);
                         else
                                 car{1,3}(end+1)=mission3(k(1,i),2);
                         end
                         else if  ((x>=3/8) && (x<4/8))
                                 if numel(car{1,4})>=4
                                     car{1,5}(end+1)=mission3(k(1,i),2);
                                 else
                                     car{1,4}(end+1)=mission3(k(1,i),2);
                                 end
                                 else if  (x>=4/8 && x<5/8)
                                         if numel(car{1,5})>=4
                                             car{1,6}(end+1)=mission3(k(1,i),2);
                                         else
                                                 car{1,5}(end+1)=mission3(k(1,i),2);
                                         end
                                         else if  (x>=5/6 && x<6/8)
                                                 if numel(car{1,6})>=4
                                                     car{1,7}(end+1)=mission3(k(1,i),2);
                                                 else
                                                         car{1,6}(end+1)=mission3(k(1,i),2);
                                                 end
                                                 else if (x>=6/8 && x<7/8)
                                                         if numel(car{1,7})>=4
                                                             car{1,8}(end+1)=mission3(k(1,i),2);
                                                         else
                                                             car{1,7}(end+1)=mission3(k(1,i),2);
                                                         end
                                                         else if (x>=7/8 && x<=1)
                                                                 if numel(car{1,8})>=4
                                                                     car{1,1}(end+1)=mission3(k(1,i),2);
                                                                 else
                                                                         car{1,8}(end+1)=mission3(k(1,i),2);
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
for i=1:8
    if numel(car{1,i})>4
        for j=1:8
            if (numel(car{1,j})<4 && numel(car{1,i})~=0)
                car{1,j}(end+1)=car{1,i}(end);
                car{1,i}(end)=[];
            end
        end
    end
end
end
