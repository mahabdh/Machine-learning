%initialisation
clear ; close all; clc

% Partie 1: importer et visualiser les donnes 

% importer les training sets et les test sets
Train = load('TrainingSet.txt');
Test  = load('testingSet.txt');

Xtrain = Train(:, 1:4);
Xtest  = Test (:, 1:4);
Ytrain = Train(:, 5);
Ytest  = Test (:, 5);

% Plot the data
% plotData_team_05(Xtrain, Ytrain);

% fprintf('Program paused. Press enter to continue.\n');
% pause;

% Partie 2: l'implementation du Gaussian Kernel
fprintf('\n--- Evaluation du Gaussian Kernel ---\n')
A = zeros(1,4);
fprintf('\n Veuillez introduire les donnees suivante sur votre donneur .X. : \n')
A(1) = input('Recency value : ');
A(2) = input('Frequency value : ');
A(3) = input('Monetary value : ');
A(4) = input('Time value : ');
x=A;
x1 = [2 43 10750 86]; x2 = [4 ,6,1500,16];
sigma = 0.5;
 
%prediction de la valeur de y pour le tuple entre 
 
kernel = gaussianKernel_team_05(A, x, sigma);

fprintf(['Gaussian Kernel entre X et l avec sigma = 0.5 :' ...
         '\n\t%f\n(Cette valeur devrait etre 0 ou 1)\n'], kernel);

