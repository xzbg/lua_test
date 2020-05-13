-- 随机种子相同，每次的随机生成数相同
local seed = 1589250112

math.randomseed(seed)
local tb = {}
for i = 1, 20 do
    local a = math.random(1, 10)
    tb[#tb + 1] = a
end
print(table.concat(tb, ","))