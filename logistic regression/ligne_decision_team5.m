function ligne_decision_team5(X, y, theta)
plotData_team5(X(:,2:5), y);
plot([0 20],[15 0],'LineWidth',2);
m = size(X,1);
for i=1:m
    A = zeros(1,5); 
    A(1) = 1;
    A(2) = X(i,1);
    A(3) = X(i,2);
    A(4) = X(i,3);
    A(5) = X(i,4);
    z = A * theta;
    prob = sigmoid_team5(z); 
    if prob>=0.5
        stem3(X(i, 1), X(i, 2), X(i, 3), 'Color', 'g')
    end
end

end