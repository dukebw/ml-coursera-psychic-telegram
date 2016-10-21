function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure(1); hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
% =========================================================================

positive_X = X(find(y == 1), :);
negative_X = X(find(y == 0), :);

plot(positive_X(:, 1),
     positive_X(:, 2),
     'k+;Admitted;',
     'LineWidth',
     2,
     'MarkerSize',
     7,
     negative_X(:, 1),
     negative_X(:, 2),
     'ko;Not Admitted;',
     'MarkerFaceColor',
     'y',
     'MarkerSize',
     7);

xlabel("Exam 1 Score");
ylabel("Exam 2 Score");

hold off;

end
