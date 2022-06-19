function [f4] = calculate_f4(x_norm)
[B,A]=butter(18,0.4,'high');
y1=filter(B,A,x_norm);
[P,f]=pwelch(y1,[],[],[],1000);
f4=rms(P);
end