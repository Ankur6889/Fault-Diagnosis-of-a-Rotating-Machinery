function [x] = segment_data(myMat)
x=struct2array(load(myMat));
x=reshape(x,[1000,50]);
end 