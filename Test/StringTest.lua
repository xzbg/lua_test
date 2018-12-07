-- 字符串拼接执行时间测试
local count = arg[1]
local time = os.clock()
for i = 1, count do
    local str = string.format("%s %d", "测试", i)
end
print(os.clock() - time)

time = os.clock()
for i = 1, count do
    local str = "测试" .. tonumber(i)
end
print(os.clock() - time)
