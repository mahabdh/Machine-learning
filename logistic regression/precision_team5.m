function pr = precision_team5(theta, X)
m = size(X, 1); 
% create vector pr with same number of lines as X 
pr = zeros(m, 1);
for i=1:m,
    h = sigmoid_team5(X(i,:) * theta);
    if h >= 0.5,
        pr(i) = 1;%predict that y = 1 for this X(i,:)
    else
        pr(i) = 0;%predict that y = 0 for this X(i,:)
    end
end
end