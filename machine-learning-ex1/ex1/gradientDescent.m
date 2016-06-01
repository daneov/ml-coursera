function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    fprintf('J(theta): %d\n',J_history(iter));
    % Almost like the cost function - duplication    
    res = 0;
    for i = 1:m
        h_X = 0;
        for j = 1:size(X,2)
            h_X = h_X + X(i,j) * theta(j,1);
        end

        res = res + (h_X - y(i)) * X(i,j);
    end

    theta(1,1) = theta(1,1) - alpha * (1/(m)) * res;
    theta(2,1) = theta(2,1) - alpha * (1/(m)) * res;
    

end

end
