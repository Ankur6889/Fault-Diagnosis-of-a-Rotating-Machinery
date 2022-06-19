function [] = plot_frequency_domain(myMat)
global pos_data;
y=struct2array(load(myMat));
[P,f]=pwelch(y,[],[],[],1000);
subplot(6,2,pos_data)
plot(f,P)
xlabel('frequency')
ylabel('amplitude')
title(sprintf('frequency domain graph of %s',myMat));
pos_data=pos_data+1;
subplot(6,2,pos_data)
plot(y)
xlabel('time (milli seconds) ')
ylabel('amplitude')
title(sprintf('Time domain graph of %s',myMat));
pos_data=pos_data+1;
end