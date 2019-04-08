local count = arg[1]
local a = {}
local b = {}
local c = {}
for i = 1, count do
    a[i] = i
end
local time = os.clock()
for i = 1, #a do
    b[i] = a[i]
end
print("Time = ", os.clock() - time)

time = os.clock()
table.move(a, 1, #a, 1, c)
print("Time = ", os.clock() - time)

time = os.clock()
local d = table.move(a, 1, #a, 1)
print("Time = ", os.clock() - time)