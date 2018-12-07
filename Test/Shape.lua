Shape = {}

function Shape:new(o)
    o = o or {}
    self.__index = self
    print("Shape", self, o)
    self.area = 100
    setmetatable(o, self)
    return o
end

function Shape:printArea()
    print("Shape", self.area)
end
