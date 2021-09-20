var = "variable"

print(getmetatable(var))

new = setmetatable(getmetatable(var),nil)

print(new)
