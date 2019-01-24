function [J, grad] = costFunction_team5(theta, X, y)
m = length(y); 
J = 0;
grad = zeros(size(theta));
h = sigmoid_team5(X*theta);
J = ( (-y)' *log(h)-(1-y)' * log(1-h))/m;
grad = (X'*(h - y))/m;
end

