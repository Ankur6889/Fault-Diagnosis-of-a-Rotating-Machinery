function [f1] = calculate_f1(x_normalised)
[P,f]=pwelch(x_normalised,[],[],[],1000);
f1=rms(P);
end
