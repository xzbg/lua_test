local count = arg[1]
local array = {}
math.randomseed(os.clock())
for i = 1, count do
    array[i] = math.random(1, 100)
end
print(table.concat(array, ", "))

for i = 1, count - 1 do
    for j = i, count do
        local str = string.format("%d -->array[%d]=%d , array[%d]=%d", i, i, array[i], j, array[j])
        local prefab = table.concat(array, ", ")
        if array[i] > array[j] then
            str = str .. string.format(" array[%d]=%d > array[%d]=%d", i, i, array[i], j, array[j])
            local temp = array[i]
            array[i] = array[j]
            array[j] = temp
        end
        local after = table.concat(array, ", ")
        print(str, prefab, "-->", after)
    end
end
print(table.concat(array, ", "))
