function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


hy = X*theta; % this will multiply your 97x2 matrix of population, with you 2x1 theta matrix of zeros giving you a  97x1 matrix
se = (hy-y) .^2; %this will subtract your 97x1 matrix of zeros, because your theta matrix of zeros will zero everything out
J = (1/(2*m))*(sum(se));



% =========================================================================

end
