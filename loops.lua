for i=1,10,2 do
    print(i)
end

for i=10,100,10 do
    print(i)
    if i==60 then
        print("breaking")
        break
    end
end

table = {"Monday", "Tuesday", nil, "Wednesday"}
for k,v in pairs(table) do 
    print(v)
end
for k,v in ipairs(table) do
    print(v)
end
