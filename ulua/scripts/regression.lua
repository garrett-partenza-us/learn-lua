-- Read in CSV dataset to lua table by using pattern matching
local dataset = {}
for line in io.lines("datasets/bostonhousing.csv") do 
    local crim, zn, indus, chas, nox, rm, age, dis, rad, tax, ptratio, b, lastat, medv = line:match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)")
    dataset[#dataset+1] = {crim=crim, zn=zn, indus=indus, chas=chas, nox=nox, rm=rm, age=age, dis=dis, rad=rad, tax=tax, ptratio=ptratio, b=b, lastat=lastat, medv=medv}
end

-- Function for getting the length of an inner table
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

-- Print the number of data points and dimensions per data point
print("number of data points: ", #dataset-1)
print("number of dimensions: ", tablelength(dataset[1])-1)

-- Import the SciLua library
local alg = require("sci.alg")

-- Declare matricies for downstream equations
X = {}
Y = {}

-- X sub 0 is just a a series of 1's
local x={}
-- (Q) Why is this minus 2? Should'nt it just be minus the target variable? 
for i=1, tablelength(dataset[1])-2 do
    table.insert(x, 1)
end
print(#x)
table.insert(X, x)

-- Iterate over data to fill X and Y
for i=2, #dataset, 1 do 
    local y = dataset[i]["medv"]
    table.insert(Y, tonumber(y))
    local x = {}
    for k,v in pairs(dataset[i]) do
        if k~="medv" then
            table.insert(x,tonumber (v))
        end
    end
    table.insert(X, x)
end

-- Print length of X and Y to ensure correctness
print("length of Y: ", #Y)
print("length of X: ", #X)

local X = alg.tomat(X)
local Y = alg.tovec(Y)

local function transpose(M)
    local Mt = alg.mat(tablelength(dataset[1])-1, #M)
    for r=1,M:nrow() do
        for c=1,M:ncol() do
            Mt[{c, r}] = M[{r, c}]
        end
    end
    return Mt
end

Xt = transpose(X)

--[[
Okay, I have reached the point where I have the matrices, 
but now I do not see how the dimensions line up for the operations?
]]
