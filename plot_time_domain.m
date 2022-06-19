function [] = plot_time_domain(myMat)
y=struct2array(load(myMat));
figure( 'Name',sprintf('Time domain graph of %s',myMat))
plot(y);
xlabel('Time in milliSeconds');
ylabel('Amplitude');
title(sprintf('Time domain graph of %s',myMat));
end