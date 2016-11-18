function printTestError(error_val, X_poly, y, X_poly_test, ytest, lambda_vec)
        [_ best_lambda_index] = min(error_val);
        best_lambda = lambda_vec(best_lambda_index);

        [theta] = trainLinearReg(X_poly, y, best_lambda);

        [error_test , _] = linearRegCostFunction(X_poly_test, ytest, theta, 0);
        fprintf('Best lambda: %f\nBest lambda test error: %f\n',
                best_lambda,
                error_test);
endfunction
