local noQuotes = "Garrett"
local yesQuotes = '"Garrett"'

print(noQuotes)
print(yesQuotes)

local longString = [[This is a string that,
if you print it,
will appear on many lines]]

print(longString)

local name = "Slim Shady"
local prefix = "Hi, my name is"
local combinedString = prefix.." "..name
print(combinedString)

local strNum = "123"
local strStr = "Hello"

print(tonumber(strNum))
print(tonumber(strStr))

local num = 123
print(num)
local num = tostring(num)
print(num)

print(type(num))
print(type(tonumber(num)))

print("50"+50)

print("Hello \"World\"")
print("Hello\nWorld")
print("Hello\tWorld")
