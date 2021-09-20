local alg = require 'sci.alg'

local x = alg.mat(2, 3) -- A 2-rows x 3-columns array, i.e. a matrix.

-- Can be used as a matrix:
for r=1,x:nrow() do
  for c=1,x:ncol() do
    x[{r, c}] = r*10 + c
  end
end

print(x)
