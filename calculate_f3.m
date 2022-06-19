function [f3] = calculate_f3(x_norm)
[B,A]=butter(13,[0.1 0.4]);
y1=filter(B,A,x_norm);
[P,f]=pwelch(y1,[],[],[],1000);
f3=rms(P);
end