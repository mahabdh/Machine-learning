function plotData_team5(X, y)
figure; hold on;
% Find Indices of Positive and Negative Example
pos = find(y==1);
neg = find(y == 0);

stem3(X(neg, 1), X(neg, 2), X(neg, 3), 'Color', 'r')    
hold on
stem3(X(pos, 1), X(pos, 2), X(pos, 3), 'Color', 'b')
hold on;

view(-60,15)
xlabel('Recency')                                                      
ylabel('Frequency') 
zlabel('Monetary') 
legend('Didnt donate in march', 'donated in march')

end