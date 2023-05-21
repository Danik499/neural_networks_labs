#f1
#inputs = [0.5, 0.5, 0.4, 0.4, -0.3, -0.3, -0.7, -0.7; 1, 1, -0.5, -0.5, 0.7, 0.7, -1, -1; 0.5, -0.3, 0.4, -0.5, 0.5, -0.4, 0.3, -0.5];
#output = [1, 1, 1, -1, 1, 1, -1, -1];

#f2
inputs = [0.5, 0.5, 0.4, 0.4, -0.3, -0.3, -0.7, -0.7; 1, 1, -0.5, -0.5, 0.7, 0.7, -1, -1; 0.5, -0.3, 0.4, -0.5, 0.5, -0.4, 0.3, -0.5];
output = [1, -1, -1, -1, 1, -1, 1, -1];

#lecture 3, slide 16
#inputs = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
#output = [1, 1, 1, -1, 1, 1, -1, -1];

#lecture 3, slide 17
#[-0.25, -0.25, 0.25, 0.75]
#inputs = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
#output = [1, -1, -1, -1, 1, -1, 1, -1];

#AND
#inputs = [1, 1, -1, -1; 1, -1, 1, -1];
#output = [1, -1, -1, -1];

weights = hebb(inputs, output);

new_weights = error_correction(inputs, output, [-0.25, -0.1, 0.125, 0.325], 10);

result = check_if_weights_implement_mapping(inputs, output, new_weights);

disp(new_weights);
disp(result);
#disp(weights);