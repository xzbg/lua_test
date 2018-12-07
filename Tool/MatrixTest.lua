--- 矩阵转置
local mt = {
    {6, 2, 10, 3},
    {7, 5, 4, 9},
    {8, 5, 1, 9}
}

local tm = {}
for i = 1, #mt do
    for j = 1, #mt[i] do
        if not tm[j] then
            tm[j] = {}
        end
        tm[j][i] = mt[i][j]
    end
end

for i = 1, #tm do
    local str = ""
    for j = 1, #tm[i] do
        str = str .. tonumber(tm[i][j]) .. ","
    end
    print(str)
end
