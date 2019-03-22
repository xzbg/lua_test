function yh(n)
    local arr = {}
    for i = 1, n do
        arr[i] = {}
        arr[i][1] = 1
        arr[i][i] = 1
        if i > 2 then
            for j = 2, i - 1 do
                arr[i][j] = arr[i - 1][j - 1] + arr[i - 1][j]
            end
        end
    end
    return arr[n]
end

function bezier(positionList, t)
    local n = #positionList
    local result = 0
    local factor = yh(n)
    print(table.unpack(factor))
    for i = 1, n do
        result = result + factor[i] * positionList[i] * math.pow(1 - t, n - i - 1) * math.pow(t, i)
    end
    return result
end
local args = {...}
local count = 10
for i = 1, count do
    print(bezier(args, (1 / 10) * i))
end
