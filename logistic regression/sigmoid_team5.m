function g = sigmoid_team5(z)
g = zeros(size(z));
g = exp(-z);
g = 1 + g;
g = 1./g;
end