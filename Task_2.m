clear
clc
%==================   Bearing    =======================%

x_gear=segment_data('bearing.mat');
x_normalised_gear=normalize(x_gear);
f1_bearing=calculate_f1(x_normalised_gear);
f2_bearing=calculate_f2(x_normalised_gear);  
f3_bearing=calculate_f3(x_normalised_gear);
f4_bearing=calculate_f4(x_normalised_gear);

%=================  Gearmesh    ========================%

x_gearmesh=segment_data('gearmesh.mat');
x_normalised_gearmesh=normalize(x_gearmesh);
f1_gearmesh=calculate_f1(x_normalised_gearmesh);
f2_gearmesh=calculate_f2(x_normalised_gearmesh);
f3_gearmesh=calculate_f3(x_normalised_gearmesh);
f4_gearmesh=calculate_f4(x_normalised_gearmesh);

%================== Imbalance   ========================%

x_imbalance=segment_data('imbalance.mat');
x_normalised_imbalance=normalize(x_imbalance);
f1_imbalance=calculate_f1(x_normalised_imbalance);
f2_imbalance=calculate_f2(x_normalised_imbalance);
f3_imbalance=calculate_f3(x_normalised_imbalance);
f4_imbalance=calculate_f4(x_normalised_imbalance);

%=================  misalignment    ======================%

x_misalignment=segment_data('misalignment.mat');
x_normalised_misalignment=normalize(x_misalignment);
f1_misalignment=calculate_f1(x_normalised_misalignment);
f2_misalignment=calculate_f2(x_normalised_misalignment);
f3_misalignment=calculate_f3(x_normalised_misalignment);
f4_misalignment=calculate_f4(x_normalised_misalignment);

%=================  resonance   ==========================%

x_resonance=segment_data('resonance.mat');
x_normalised_resonance=normalize(x_resonance);
f1_resonance=calculate_f1(x_normalised_resonance);
f2_resonance=calculate_f2(x_normalised_resonance);
f3_resonance=calculate_f3(x_normalised_resonance);
f4_resonance=calculate_f4(x_normalised_resonance);

%======= Preparation of data for Task_3 =================%

bearing_fault=[f1_bearing;f2_bearing;f3_bearing;f4_bearing]';
gearmesh_fault=[f1_gearmesh;f2_gearmesh;f3_gearmesh;f4_gearmesh]';
misalignment_fault=[f1_misalignment;f2_misalignment;f3_misalignment;f4_misalignment]';
imbalance_fault=[f1_imbalance;f2_imbalance;f3_imbalance;f4_imbalance]';
resonance_fault=[f1_resonance;f2_resonance;f3_resonance;f4_resonance]';
G=[bearing_fault;gearmesh_fault;misalignment_fault;imbalance_fault;resonance_fault];

save 'fault_data_merged' G bearing_fault gearmesh_fault misalignment_fault imbalance_fault resonance_fault;


