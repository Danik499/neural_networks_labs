function sgn = sgn (num)
  if num >= 0
    sgn = 1;
  elseif num < 0
    sgn = -1;
  else
    error("The input parameter must be a number");
  endif
endfunction
