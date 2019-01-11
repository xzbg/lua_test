local count = arg[1]
local array = {}
math.randomseed(arg[2])
for i = 1, count do
    array[i] = math.random(1, 100)
end
print(table.concat(array, ", "))

function quick_sort(low, high, arr)
    if low >= high then
        return
    end
    print("\t  1 : " .. table.concat(array, ", ", low, high))
    local i = low
    local j = high
    local mid = arr[i]
    while i < j do
        while (i < j and arr[j] >= mid) do
            j = j - 1
        end
        if i < j then
            local temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            i = i + 1
        end
        while (i < j and arr[i] <= mid) do
            i = i + 1
        end
        if i < j then
            local temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            j = j - 1
        end
        print("\t  2 : " .. table.concat(array, ", ", low, high))
    end
    print("------------------")
    if i > low then
        quick_sort(low, i - 1, arr)
    end
    if j < high then
        quick_sort(j + 1, high, arr)
    end
    print("=======================")
end
quick_sort(1, #array, array)
print(table.concat(array, ", "))
