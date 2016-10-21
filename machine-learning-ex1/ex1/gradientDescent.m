%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

        % Initialize some useful values
        m = length(y); % number of training examples
        J_history = zeros(num_iters, 1);

        for iter = 1:num_iters
                theta = theta - (alpha/m)*((X*theta - y)'*X)';

                % Save the cost J in every iteration    
                J_history(iter) = computeCost(X, y, theta);
        end

end
