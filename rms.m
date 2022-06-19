function [rms_value] = rms(matrix)
for i=1:50
    matrix_psd(:,i)=norm(matrix(:,i),2);
    N(:,i)=length(matrix(:,i));
end
rms_value=matrix_psd./sqrt(N);
end