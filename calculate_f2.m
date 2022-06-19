function [f2] = calculate_f2(x_norm)
[B,A]=butter(11,0.1);
y1=filter(B,A,x_norm);
[P,f]=pwelch(y1,[],[],[],1000);
f2=rms(P);
end