function loss = loss_ex(time)
if time<=0 %如果到达时间减去需求时间小于零 则表示按时到达 没有损失
    loss=0;
end
if time>0 %如果到达时间减去需求时间大于零 则表示没有按时到达 计算损失
    loss=(exp(time*0.01)-1);
end
end


