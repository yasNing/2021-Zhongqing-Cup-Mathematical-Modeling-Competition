function car= assign_mission_1_new()
%m表示车数6
m=2;
%n表示工位号数19
n=8;
%car=randperm(6)
car=cell(1,2);
%gongwei=randperm(19)
global mission1
k=randperm(8);
for i=1:n
    x=rand(1);
    if x<1/2
        if numel(car{1,1})>=4
            car{1,2}(end+1)=mission1(k(1,i),2);
        else
            car{1,1}(end+1)=mission1(k(1,i),2);
        end
    else
         if numel(car{1,2})>=4
            car{1,1}(end+1)=mission1(k(1,i),2);
        else
            car{1,2}(end+1)=mission1(k(1,i),2);
         end
     end
end
end

