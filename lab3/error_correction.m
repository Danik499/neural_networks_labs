function weights = error_correction(inputs, d, starting_weights, max_iterations)
  transposed_inputs = inputs.';

  if starting_weights == 0
    weights = -1 .* rand(1, size(inputs)(1)+1) + 0.5;
  else
    weights = starting_weights
  endif

  iterations = 0;
  j = 1;
  flag = 1;

  while 1

    # step 1
    z = weights(1);
    inputs_row = transposed_inputs(j:j, :);

    for k=1:size(inputs_row)(2)
      z += weights(k+1) * inputs_row(k);
    endfor

    y = sgn(z);

    if y != d(j)
      flag = 0;
      delta = d(j) - y;
      weights(1) = weights(1) + delta;
      for k=1:size(inputs_row)(2)
        weights(k+1) = weights(k+1) + delta * (1 / inputs_row(k));
      endfor
    endif

    # step 2
    j++;
    if j > size(d)(2)
      if flag == 0
        iterations++;

        # Prevent an infinite loop
        if iterations == max_iterations
          error("Limit exception");
          break;
        endif

        flag = 1;
        j = 1;
        continue;
      else
        printf("Calculating weights by error-correction took %d iteration(s).\n", iterations);
        break;
      endif
    endif

  endwhile
endfunction
