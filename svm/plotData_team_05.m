function plotData_team_05(X, y)

% Create New Figure
figure; hold on;

% Find Indices of Positive and Negative Example
pos = find(y==1);
neg = find(y == 0);

plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2,'MarkerSize', 7);
hold on;
xlabel('')                                                      
ylabel('')
legend('Didnt donate in march', 'donated in march')
end