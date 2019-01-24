%clear : to clear one or more specific variables from the current workspace
%close all : close all figures
%clc : clears all the text from the Command Window
clear ; close all; clc

% Load Data
data = load('dataSet.txt');
X = data(:, 1:4); y = data(:, 5);
plotData_team5(X,y);
m = size(X,1);
X = [ones(m, 1) X]; %add theta 0 to X
theta = zeros(5, 1);

% we're going to use the fminunc function to find the optimal parameters theta.
% optimset creates an object containing the options we want to send to fminunc
options = optimset('MaxIter', 400);
[theta, cost] = fminunc(@(t)(costFunction_team5(t, X, y)), theta, options);
fprintf('theta: \n');
fprintf(' %f \n', theta);

%plot boundary
ligne_decision_team5(X, y, theta);

%prediction
A = zeros(1,5); 
A(1) = 1;
A(2) = input('Recency value : ');
A(3) = input('Frequency value : ');
A(4) = input('Monetary value : ');
A(5) = input('Time value : ');
z = A * theta;
prob = sigmoid_team5(z);
fprintf('For a person with R = %d, F = %d, M = %d, T = %d, \n we predict that this person has a %f probability that he donated blodd in march 2007\n'...
    ,A(2), A(3), A(4), A(5), prob);

%calculate precision
pr = precision_team5(theta, X);
%we calculate the mean where pr is correctly predicted (compare pr & y)
fprintf('precision : %f\n', mean(double(pr == y)) * 100);
