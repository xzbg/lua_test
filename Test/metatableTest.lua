local tb = {}
tb.name = 1111
tb.icon = 2222

local ta = {}
setmetatable(ta, {__index = tb})

print(ta.name, ta.icon)
