-- 闭包方式创建对象验证
local testCount = arg[1]
local CreateObj = function()
    local obj = {}
    return obj
end
TestObj = CreateObj()
print("================")
for i = 1, testCount do
    print(TestObj)
end
print("================")
for i = 1, testCount do
    print(CreateObj())
end
--[[
    测试结果
    PS E:\Workspace\lua_test\Test> lua .\CreateTest.lua 5
    ================
    table: 0000000000189db0
    table: 0000000000189db0
    table: 0000000000189db0
    table: 0000000000189db0
    table: 0000000000189db0
    ================
    table: 0000000000189c30
    table: 0000000000189af0
    table: 0000000000189ef0
    table: 000000000018a070
    table: 0000000001140610
]]