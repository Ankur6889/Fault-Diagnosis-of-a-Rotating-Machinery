function distance = euc(a, b)
%Euclidean Distance
% Calculates the Euclidean distance between two cases which an equal
% number of features.
%
% Author: Andrew Hills
% Date: 23/02/07
if nargin ~= 2

  error('Two input arguments required.');
  return;
end
if ~all(size(a) == size(b))
  error('Dimensions of inputs are not equal.');
  return;
end
if min(size(a)) ~=1
  error('Input is not a vector');
  return;
end
% Calculate the Euclidean Distance using the MATLAB’s norm function
distance = norm(a - b);