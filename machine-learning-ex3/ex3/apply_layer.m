function a_n_plus_1 = apply_layer(a_n, Theta_n)

m = size(a_n, 1);
a_n = [ones(m, 1) a_n];
z_n_plus_1 = Theta_n*a_n';
a_n_plus_1 = sigmoid(z_n_plus_1)';

end
