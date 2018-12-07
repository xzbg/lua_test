-- require("TestObj")
-- local obj = TestObj.New()
-- obj.Register(
--     "id",
--     function(key, old, val)
--         print(key, old, val)
--     end
-- )
-- obj.id = 10
-- obj.sid = 12

require("Shape")
require("Square")
local s = Shape:new()
s:printArea()

local sq = Square:new()
sq:printArea()