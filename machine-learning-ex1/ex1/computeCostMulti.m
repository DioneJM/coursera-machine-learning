function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
m = length(y); % number of training examples
J = 0;
hypothesis = X*theta;
diff = hypothesis - y;
J = 1/(2*m)*sum((diff.^2));
end
