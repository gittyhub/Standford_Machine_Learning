function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

hy = X*theta; % this will multiply your 97x2 matrix of population, with your 2x1 theta matrix of zeros giving you a  97x1 matrix
se = hy-y; %this will subtract your 97x1 matrix of zeros, because your theta matrix of zeros will zero everything out, with your y value, profit
ev=se'*(X);
costwAlpha = (alpha*ev)/m;
theta=theta-(costwAlpha');






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
