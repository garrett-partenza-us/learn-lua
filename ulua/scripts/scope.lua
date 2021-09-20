local var = "variable"
-- child blocks can access the scope of parent blocks
for i =1,1,1 do
    print(var)
end

-- example of not being able to access variable out of scope
local function variable()
    local hidden="variable"
    print(hidden)
end

variable()
print(hidden)

--forward cast to access variables out of scope
for i=1,1,1 do
    local forwardcast=nil
    for i=1,1,1 do
        forwardcast="variable"
    end
    print(forwardcast)
end

