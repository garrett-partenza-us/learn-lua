if 2+4==6 then 
    print("this is a true statement")
end

var = 50

if var<25 then
    print(var)
elseif var>=25 and var<50 then
    print(var)
elseif var >=50 then
    print(var)
end

function sleep(n)
  os.execute("sleep " .. tonumber(n))
end

timeremaining = 5
while timeremaining > 0  do
    print(timeremaining)
    sleep(1)
    timeremaining=timeremaining-1
end

local max = 0
repeat
    print(max)
    max=max+1
until max>5
