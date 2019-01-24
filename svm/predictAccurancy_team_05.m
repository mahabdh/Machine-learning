clc
clear
% Read data
Train = load('TrainingSet.txt');
Test  = load('testingSet.txt');

Xtrain = Train(:, 1:4);
Xtest  = Test (:, 1:4);

Ytrain = Train(:, 5);
Ytest  = Test (:, 5);

iter = 4000;
Box = 1;
Outlier = [0, .001, .005, .01, .05, .1, .5];
Accuracy_Linear = zeros(1, size(iter, 2));
Accuracy_RBF = zeros(1, size(iter, 2));
for v = 1:length(Outlier)
    rng(42)
    SVMModel_Linear = fitcsvm(Xtrain,Ytrain, 'KernelScale', 'auto', 'KernelFunction', 'linear', 'OutlierFraction', Outlier(v), 'IterationLimit', iter,'BoxConstraint', Box);
    prediction_Linear = predict(SVMModel_Linear, Xtest);
    Accuracy_Linear(v) = sum(prediction_Linear == Ytest )/length(Ytest);
    
    rng(42)
    SVMModel_RBF = fitcsvm(Xtrain,Ytrain, 'KernelScale', 'auto', 'KernelFunction', 'gaussian', 'OutlierFraction', Outlier(v),'IterationLimit', iter,'BoxConstraint', Box);
    prediction_RBF = predict(SVMModel_RBF, Xtest);
    Accuracy_RBF(v) = sum(prediction_RBF == Ytest )/length(Ytest);
end
plot(1:length(Outlier), [Accuracy_Linear; Accuracy_RBF], '-o')
legend('Non-Linear Kernel', 'Linear Kernel', 'Location', 'northoutside')
xlabel('Box Constraint')
ylabel('Accuracy')