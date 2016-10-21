function J = cost_function(X, y, theta)

        m = size(X, 1);
        predictions = X*theta;
        square_errors = (predictions - y).^2;

        J = 1/(2*m) * sum(square_errors);

endfunction
