Timer = {}

function Timer:new(o, time, callback, count)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.duration = time
    self.active = false
    self.count = count
    self.callback = callback
    self.num = 0
    return o
end

function Timer:Start()
    self.active = true
    self.num = 0
    self:Update()
end

function Timer:Update()
    local time1 = os.clock()
    repeat
        local time2 = os.clock()
    until (time2 - time1 >= self.duration or self.active == false)
    self.num = self.num + 1
    if self.callback ~= nil then
        self.callback()
    end
    if self.count ~= nil and self.num >= self.count then
        self.active = false
    end
    if self.active then
        self:Update()
    end
end

function Timer:Stop()
    self.active = false
end

local timer =
    Timer:new(
    nil,
    1,
    function()
        print(os.time())
    end,
    5
)
timer:Start()
