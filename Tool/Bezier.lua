local args = {...}
function bezier(positionList, t)
    local n = #positionList
    local result = 0
    for i = 1, n do
        result = result + positionList[i] * math.pow(1 - t, n - i - 1) * math.pow(t, i)
    end
    return result
end
local count = 10
for i = 1, count do
    print(bezier(args, (1 / 10) * i))
end
