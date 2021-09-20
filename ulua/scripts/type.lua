print("this is a number")
print(100)
print("this is a string " .. 100)

print("coercion does not work with logical comparisons")
if 100 ~= "100" then
    print("False")
end
