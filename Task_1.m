clear 
%==========================Task_1=======================================%

%===================== Plot time-domain graph ==========================%

plot_time_domain('bearing.mat')
plot_time_domain('gearmesh.mat')
plot_time_domain('imbalance.mat')
plot_time_domain('misalignment.mat')
plot_time_domain('multifault.mat')
plot_time_domain('resonance.mat')


%===================== Plot frequency-domain graph and time domain graph side by side ====================%

 global pos_data;
 pos_data=1;
 figure( 'Name','Figure showing a comparison between time domain and frequency domain graph for various types of Faults ')
 plot_frequency_domain('bearing.mat')
 plot_frequency_domain('gearmesh.mat')
 plot_frequency_domain('imbalance.mat')
 plot_frequency_domain('misalignment.mat')
 plot_frequency_domain('multifault.mat')
 plot_frequency_domain('resonance.mat')
