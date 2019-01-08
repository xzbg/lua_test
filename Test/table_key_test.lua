-- 测试lua table key的可用类型
local tb = {1, 2}
tb.__tostring = function ()
    return "ok";
end
setmetatable(tb, tb)
local ta = {}
ta[tb] = 123

table.insert(tb, 3)

ta[tb] = 234

for k, v in pairs(ta) do
    print(k, v)
end

print(tb);
print(ta[tb])
print(ta.ok)