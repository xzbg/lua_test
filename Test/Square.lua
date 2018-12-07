Square = {}

function Square:new(o)
    o = o or Shape:new(o)
    setmetatable(o, self)
    self.__index = self
    print("Square", o, self)
    self.minValue = 10
    self.maxValue = 20
    self.area = 200
    
    return o
end

function Square:printArea()
    print("Square", self.area, self.minValue, self.maxValue)
end
