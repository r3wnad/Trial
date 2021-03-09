function [precisionPoints] = Chebyshev(lowerLimit, upperLimit, n)
%   Applying Chebyshev's spacing to get the three precision points

precisionPoints = zeros(n,1);

  for index = 1:n
      precisionPoints (index, 1) = 0.5*(lowerLimit + upperLimit)- 0.5*(upperLimit - lowerLimit)*cospi((2*index - 1)/(2*n));
  end
  
end



