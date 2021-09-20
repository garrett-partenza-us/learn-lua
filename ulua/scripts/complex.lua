-- Enter your code here. Read input from STDIN. Print output to STDOUT

-- Read user input into a length three hash table
-- Uncomment this out for testing in HackerRank
--[[
input = {}
for substring in io.read("*a"):gmatch("%S+") do
   table.insert(input, tonumber(substring))
end
]]

local input = {3,15,100}
a, b, c = input[1], input[2], input[3]

-- Define function that takes in an integer and returns the d-bit binary representation
function getbits(x)
    local history={}
    while x>0 do
        remainder=x%2
        table.insert(history,1,remainder)
        x=(x-remainder)/2
    end
    for k,v in pairs(history) do
        history[k]=math.floor(v)
    end
    bits_string, _ = string.gsub(table.concat(history), "%.", "")
    return bits_string
end

bits_string = getbits(b)
print(bits_string)

-- Fast modular exponentiation algorithm
required = {}
for i=0, #bits_string  do
    local charecter = bits_string:sub(#bits_string-i, #bits_string-i)
    if tonumber(charecter) == 1 then
        table.insert(required,2^i)
    end
end

lookup = {}
power = 1
prev = nil
repeat
    if prev then
        lookup[tostring(power)]=(prev*prev)%c
        prev=lookup[tostring(power)]
    else
        lookup[tostring(power)]=(a^power)%c
        prev=lookup[tostring(power)]
        end
    power=power*2
until power>=b

product = 1
for k,v in next, required do
    print(math.floor(lookup[tostring(math.floor(v))]))
    product = product * lookup[tostring(math.floor(v))]
end

print(math.floor(product%c))
