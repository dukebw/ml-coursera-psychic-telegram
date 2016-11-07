function [a_n_plus_1, z_n_plus_1] = apply_layer(a_n, Theta_n)

m = size(a_n, 1);

z_n_plus_1 = (a_n*Theta_n');
a_n_plus_1 = [ones(m, 1) sigmoid(z_n_plus_1)];

end
