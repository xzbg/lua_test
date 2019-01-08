local n = arg[1]
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
for i = 1, #arr do
    local str = ""
    for k = 1, (n - i) / 2 + 1 do
        str = str .. "\t"
    end
    for j = 1, #arr[i] do
        str = str .. "\t" .. arr[i][j]
    end
    print(str)
end
