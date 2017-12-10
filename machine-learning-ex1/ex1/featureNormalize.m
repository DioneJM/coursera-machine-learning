function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

matrixDim = size(X);
iter = matrixDim(2); %The number of features x_i

column = ones(size(X,1), 1); %A mx1 column vector used to conver mu and sigma
                            %a 1xn matrix to a mxn in order to perform
                            %element wise operations for X_norm
mu = column * mean(X);
sigma = column *  std(X); 
X_norm = (X - mu)./sigma;

end
