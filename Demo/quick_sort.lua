local count = arg[1]
local array = {}
math.randomseed(os.clock())
for i = 1, count do
    array[i] = math.random(1, 100)
end
print(table.concat(array, ", "))

function quick_sort(startIndex, endIndex, mid, array)
    


end
