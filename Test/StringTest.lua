-- 字符串拼接执行时间测试
-- local count = arg[1]
-- local time = os.clock()
-- for i = 1, count do
--     local str = string.format("%s %d", "测试", i)
-- end
-- print(os.clock() - time)

-- time = os.clock()
-- for i = 1, count do
--     local str = "测试" .. tonumber(i)
-- end
-- print(os.clock() - time)

local str = "jjj_r1.prefab"
local a, b, c = string.find(str, "_r%d")
local s1 = string.sub(str, 0, b - 1)
local s2 = string.sub(str, b+1, string.len(str))

print(a, b, c, s1, s2)
