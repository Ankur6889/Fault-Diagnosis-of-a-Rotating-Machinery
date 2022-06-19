clc;
clear;

load fault_data_merged.mat

%======Specify the number of training cases==============%

numberOfTrainingCases=35;
numberOfTestingCases= length(bearing_fault)-numberOfTrainingCases;


trainingSet = [bearing_fault(1:numberOfTrainingCases,:);
               gearmesh_fault(1:numberOfTrainingCases,:);
               imbalance_fault(1:numberOfTrainingCases,:);
               misalignment_fault(1:numberOfTrainingCases,:);
               resonance_fault(1:numberOfTrainingCases,:)];

testingSet = [bearing_fault(numberOfTrainingCases+1:end,:);
               gearmesh_fault(numberOfTrainingCases+1:end,:);
               imbalance_fault(numberOfTrainingCases+1:end,:);
               misalignment_fault(numberOfTrainingCases+1:end,:);
               resonance_fault(numberOfTrainingCases+1:end,:)];

trainingTarget = [ones(1,numberOfTrainingCases)';
    ones(1,numberOfTrainingCases)'*2;
    ones(1,numberOfTrainingCases)'*3;
    ones(1,numberOfTrainingCases)'*4;
    ones(1,numberOfTrainingCases)'*5];

testingTarget = [ones(1,numberOfTestingCases)';
    ones(1,numberOfTestingCases)'*2;
    ones(1,numberOfTestingCases)'*3;
    ones(1,numberOfTestingCases)'*4;
    ones(1,numberOfTestingCases)'*5];

% Calculate the total number of test and train classes
totalNumberOfTestingCases = numberOfTestingCases * 5;
totalNumberOfTrainingCases = numberOfTrainingCases * 5;
% Create a vector to store assigned labels
inferredLabels = zeros(1, totalNumberOfTestingCases);
% This loop cycles through each unlabelled item:
for unlabelledCaseIdx = 1:totalNumberOfTestingCases
unlabelledCase = testingSet(unlabelledCaseIdx, :);
% As any distance is shorter than infinity
shortestDistance = inf;
shortestDistanceLabel = 0; % Assign a temporary label
% This loop cycles through each labelled item:
for labelledCaseIdx = 1:totalNumberOfTrainingCases
labelledCase = trainingSet(labelledCaseIdx, :);
% Calculate the Euclidean distance:
currentDist = euc(unlabelledCase, labelledCase);
% Check the distance
if currentDist < shortestDistance
shortestDistance = currentDist;
shortestDistanceLabel = trainingTarget(labelledCaseIdx);
end
end % inner loop
% Assign the found label to the vector of inferred labels:
inferredLabels(unlabelledCaseIdx) = shortestDistanceLabel;
end % outer loop
inferredLabels=inferredLabels';
Nc=length(find(inferredLabels==testingTarget));
Na=length(testingTarget);
Accuracy_Percentage=((Nc/Na)*100)
