local function standard(num1, num2)
    return(num1+num2)
end

local result = standard(2,3)
print(result)

local Module = {}

function Module.func1(num1,num2)
    return(num1+num2)
end
function Module.func2(num1,num2)
    return(num1-num2)
end
for key, value in pairs(Module) do 
    print(key, value)
end

tableResult = Module.func1(1,2)
print(tableResult)
