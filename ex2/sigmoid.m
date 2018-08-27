function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

%What is a sigmoid function? aka Logistic
%Lecture note page one.
%In a nut shell this is what is going to draw you line throught your data set for you to make use of it
%note the dot before the divisor, if you havent already read the "Programing Tips from Mentors", this will save you hours later

g = 1./(1+exp(-z));



% =============================================================

end
