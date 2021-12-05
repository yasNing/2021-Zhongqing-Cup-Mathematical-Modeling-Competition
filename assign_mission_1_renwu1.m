%任务一   车为3的情况
function car= assign_mission_1_renwu1()
%m表示车数6
m=3;
%n表示工位号数19
n=8;
%car=randperm(6)
car=cell(1,3);
%gongwei=randperm(19)
global mission1
k=randperm(8);
for i=1:n
    x=rand(1);
    if x<1/3
        if numel(car{1,1})>=4
            car{1,2}(end+1)=mission1(k(1,i),2);
        else
                car{1,1}(end+1)=mission1(k(1,i),2);
        end
                else if (x>=1/3 && x<=2/3)
                    if numel(car{1,2})>=4
                        car{1,3}(end+1)=mission1(k(1,i),2);
        else
                car{1,2}(end+1)=mission1(k(1,i),2);
         end
        else
            if numel(car{1,3})>=4
                car{1,1}(end+1)=mission1(k(1,i),2);
            else
                    car{1,3}(end+1)=mission1(k(1,i),2);
            end
        end
    end
end
  
for i=1:3
    if numel(car{1,i})>4
        for j=1:3
            if numel(car{1,j})<4
                car{1,j}(end+1)=car{1,i}(end);
                car{1,i}(end)=[];
            end
        end
    end
end
      
end
