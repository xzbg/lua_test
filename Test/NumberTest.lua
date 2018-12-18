-- 16进制和10进制之间转换
-- local num = arg[1]
-- local str = string.format("%#x", num)
-- print(str)
-- local toNum = tonumber(str)
-- print(toNum)
local str = arg[1]
print(string.len(str))
local index = 2
local len = string.len(str)
local c = {}
while index < len do
    c[#c + 1] = string.sub(str, index, index + 1)
    index = index + 2
end
for i = 1, #c do
    print(c[i])
    c[i] = tonumber('0x' .. c[i]) / 255
    print(c[i])
end
