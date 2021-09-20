t = {}
print(t)

table.insert(t,1)
table.insert(t,2)
table.insert(t,3)

for index, value in ipairs(t) do
    print(index, value)
end

for index=1, #t do 
    print(t[index])
end

table.remove (t,2)
print(t)

t={}
t["Monday"]=1
t["Tuesday"]=2

for key, value in pairs(t) do 
    print(key, value)
end

t["Monday"]=nil

for key, value in pairs(t) do
    print(key, value)
end


