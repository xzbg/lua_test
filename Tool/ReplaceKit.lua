local file = io.open("resource.txt", "r")
local str = file:read("l")
local tb = {}
while str ~= nil do
    for k, v in string.gmatch(str, "(%d+)%s(%S+)") do
        tb[k] = v
    end
    str = file:read("l")
end
io.close(file)

file = io.open("target.txt", "r")
str = file:read("l")
local rs = {}
while str ~= nil do
    if str ~= nil and str ~= "" then
        rs[#rs + 1] = tb[str]
    else
        rs[#rs + 1] = str or ""
    end
    str = file:read("l")
end
io.close(file)

file = io.open("target.txt", "w+")
for i = 1, #rs do
    file:write(rs[i] .. "\n")
end
file:flush()
io.close(file)
