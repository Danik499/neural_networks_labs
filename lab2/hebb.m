function hebb = hebb (inputs, desired_output)
  x = [ones(size(desired_output)(2), 1).'; inputs(:, :)];
  w = [];

  for i = 1:size(x)(1)
    w(end+1) = sum(x(i:i, :) .* desired_output) / size(desired_output)(2);
  endfor

  hebb = w;
endfunction
