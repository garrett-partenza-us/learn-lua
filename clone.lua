local original = {
    Monday=1,
    Tuesday=2
}

local function shallowCopy(original)
	local copy = {}
	for key, value in pairs(original) do
		copy[key] = value
	end
	return copy
end

copy = shallowCopy(original)

print(copy)
print(original)

local original = {
    Monday=1,
    Tuesday=2,
    Months={
        January=1,
        Feburary=2
    }
}

local function deepCopy(original)
    copy = {}
    for key, value in pairs(original) do
        if type(value)=="table" then
            value = deepCopy(value)
        end
        copy[key]=value
    end
    return(copy)
end

copy = deepCopy(original)
print(copy)
print(original)
