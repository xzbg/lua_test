local n = arg[1]

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
