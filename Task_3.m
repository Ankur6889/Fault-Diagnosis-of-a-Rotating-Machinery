load fault_data_merged.mat;

c=corrcoef(G); % Calculates a correlation coefficient matrix c of G
[v,d] =eig(c); % Find the eigenvectors v and the eigenvalues d of G
T=[ v(:,end)';v(:,end-1)']; % Create the transformation matrix T from
% the first two principal components
z=T*G'; % Create a 2-dimensional feature vector z
a=0:50:250;
color={'or' 'or' 'sg' 'dc' '^k' '<b'};
figure();
for i=2:6
    plot(z(1,a(i-1)+1:a(i)),z(2,a(i-1)+1:a(i)),color{i}) % Scatter plot of the 2-dimensional features
    hold on
end 
title('fault clusters for LAB')