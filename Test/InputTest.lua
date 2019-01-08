local args = {...}
print(...)
for k, v in pairs(args) do
    print(k, v)
end
--[[
    测试结果
    PS E:\Workspace\lua_test\Test> lua .\InputTest.lua 1 2 3 4 5 6
    nil
    1       1
    2       2
    3       3
    4       4
    5       5
    6       6    
]]