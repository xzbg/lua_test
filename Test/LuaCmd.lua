local file = io.open("inputTest.lua", "r")
local str = file:read()
while str do
    string.gsub(str, "[^,]+",function(s)
        print(s)
    end)
    str = file:read()
end
