function loss = loss_ex(time)
if time<=0 %�������ʱ���ȥ����ʱ��С���� ���ʾ��ʱ���� û����ʧ
    loss=0;
end
if time>0 %�������ʱ���ȥ����ʱ������� ���ʾû�а�ʱ���� ������ʧ
    loss=(exp(time*0.01)-1);
end
end


