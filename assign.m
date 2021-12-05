function car=assign()
num=randperm(48);%生成48个乱序数字
car=cell(1,10);
if rand(1)<0.5
   for i=1:8
       car{1,i}(1,1:5)=num(1+(i-1)*5:5+(i-1)*5);
   end
   car{1,9}(1,1:4)=num(41:44);
   car{1,10}(1,1:4)=num(45:48);
else
    for i=1:9
       car{1,i}(1,1:5)=num(1+(i-1)*5:5+(i-1)*5);
    end
     car{1,10}(1,1:3)=num(46:48);
end
end

