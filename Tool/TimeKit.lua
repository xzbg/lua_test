-- 获取当前凌晨时间
function get_zero_time()
    local time = os.time()
    local h = os.date("%H", time)
    local m = os.date("%M", time)
    local s = os.date("%S", time)
    local zero_time = time - h * 3600 - m * 60 - s
    print(time, zero_time)
end

get_zero_time()
