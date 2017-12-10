function [theta, history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
m = length(y); % number of training examples
history = zeros(num_iters, 1); %J(theta) values for each iter

for iter = 1:num_iters %repeat until convergence
    hypothesis = X*theta;
    errorVal = hypothesis - y;
    thetaChange = (alpha/m)*(X.' * errorVal);
    theta = theta - thetaChange;
    
    history(iter) = computeCost(X, y, theta);
end
end
