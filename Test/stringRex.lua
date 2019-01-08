-- lua正則表達式
local str = "[{soldier  , 100063},{bowman,100064},{magician,100065}]"
local list = string.gmatch(str, "(%w+)(%s*),(%s*)(%d+)")
for k, v in list do
    print(k)
end
-- 去除空格
str = " he  llo W orl d"
print((string.gmatch(str, "^%s*(.-)%s*$", "%1"))())
