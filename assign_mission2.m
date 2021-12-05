function car= assign_mission2()
%m表示车数6
m=4;
%n表示工位号数19
n=19;
%car=randperm(6)
car=cell(1,4);
%gongwei=randperm(19)
global mission2
for i=1:n
    x=rand(1);
    if x<1/4
        car{1,1}(end+1)=mission2(i,2);
        if numel(car{1,1})==7
            car{1,2}(end+1)=mission2(i,2);
        end
    else if (x>=1/4 & x<2/4)
        car{1,2}(end+1)=mission2(i,2);
if numel(car{1,2})==7
            car{1,3}(end+1)=mission2(i,2);
        end
     else if  (x>=2/4 & x<3/4)
        car{1,3}(end+1)=mission2(i,2);
if numel(car{1,3})==7
            car{1,4}(end+1)=mission2(i,2);
        end
         else if  (x>=3/4 & x<=1)
            car{1,4}(end+1)=mission2(i,2);
                 if numel(car{1,4})==7
            car{1,1}(end+1)=mission2(i,2);
        end  
             end
         end
        end
    end
end
for i=1:4
    if isempty(car{1,i})==1;
        car= assign_mission2();
    end
end
end

