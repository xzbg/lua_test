local time = os.clock()
local tb = {}
local count = arg[1]
for i = 0, count do
    tb[i] = i
end
print("tb[i] = i", os.clock() - time, count)

time = os.clock()
for i = 0, count do
    table.insert(tb, i)
end
print("table.insert", os.clock() - time, count)

time = os.clock()
for i = 0, count do
end
print("for i = 0, count do", os.clock() - time, count)

time = os.clock()
for k, v in pairs(tb) do
end
print("for k, v in pairs(tb) do", os.clock() - time, count)

time = os.clock()
for k, v in ipairs(tb) do
end
print("for k, v in ipairs(tb) do", os.clock() - time, count)
