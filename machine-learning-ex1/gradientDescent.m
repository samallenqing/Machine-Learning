function [theta, J_history] = gradientDescent(X, y, theta, alpha, p)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
%num_iters
% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(p, 1);

for iter = 1:p

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

theta = theta - alpha * (1/m) * X' * (X * theta - y);


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
