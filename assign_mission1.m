%ÈÎÎñÒ»

function  car= assign_mission1()
global mission1;
B1=mission1(:,2);
car=cell(1,2);
A1=randperm(8);
%mission1(A1(1,1),3)
for i=1:4
    car{1,1}(1,i)=B1(A1(1,i),1);
    car{1,2}(1,i)=B1(A1(1,i+4),1);
end
end




    
         
   
   %{
        else if ((x>=1/6) && (x<2/6))
                 if numel(car{1,2})>=4
                     car{1,3}(end+1)=mission3(i,2);
                 else
                     car{1,2}(end+1)=mission3(i,2);
                 end
                 else if  ((x>=2/6) && (x<3/6))
                         if numel(car{1,3})>=4
                             car{1,4}(end+1)=mission3(i,2);
                         else
                                 car{1,3}(end+1)=mission3(i,2);
                         end
                         else if  ((x>=3/6) && (x<4/6))
                                 if numel(car{1,4})>=4
                                     car{1,5}(end+1)=mission3(i,2);
                                 else
                                     car{1,4}(end+1)=mission3(i,2);
                                 end
                                 else if  (x>=4/6 && x<5/6)
                                         if numel(car{1,5})>=4
                                             car{1,6}(end+1)=mission3(i,2);
                                         else
                                                 car{1,5}(end+1)=mission3(i,2);
                                         end
                                      else if  (x>=5/6 && x<=1)
                                              if numel(car{1,6})>=4
                                                  car{1,1}(end+1)=mission3(i,2);
                                              else
                                                      car{1,6}(end+1)=mission3(i,2);
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
                if numel(car{1,j})<4
                    car{1,j}(end+1)=car{1,i}(end);
                    car{1,i}(end)=[];
                end
            end
        end
    end
end

end

%{
for j=1:6
 if isempty(car{1,j})==1
      car= assign_mission_6();
       end
end
%}
%{
for j=1:6
 if numel(car{1,j})>4
      car= assign_mission_6();
       end
end

end
end
%}
%}

