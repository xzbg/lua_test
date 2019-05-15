-- 获取当前凌晨时间
TimeKit = {}
function TimeKit.New()
    local t = {}
    function t.get_zero_time()
        local time = os.time()
        local h = os.date("%H", time)
        local m = os.date("%M", time)
        local s = os.date("%S", time)
        local zero_time = time - h * 3600 - m * 60 - s
        print(time, zero_time)
    end

     --[[
        倒计时解析
        format格式示例：
            [%02d:%02d:%02d:%02d:%02d]即为[00:00:00:00:00]
            [%02d天%02d小时%02d分%02d秒%02d毫秒]即为[00天00小时00分00秒00毫秒]
            TODO 解析方式可以自己定义，但是格式化的参数个数，必须和展开层数对应
        TODO 其中从“天、小时、分、秒、毫秒”哪一个单位开始显示，取决于expand参数
        TODO 默认不显示毫秒，但传入的时间戳必须为毫秒（如果不是需要外部计算为毫秒传入）
    ]]
    ---@param millSecondTime number 要解析的毫秒级时间戳
    ---@param expand number 需要展开的层数
    ---@param format string|table 时间的显示格式
    ---@param showMill boolean 是否显示毫秒
    function t.TimeFormat2(millSecondTime, expand, format, showMill)
        local secondTime = millSecondTime / 1000
        local day = math.floor(secondTime / 86400)
        local hour = math.floor((secondTime % 86400) / 3600)
        local min = math.floor((secondTime % 86400 % 3600) / 60)
        local sec = math.floor(secondTime % 86400 % 3600 % 60)
        local mill = math.floor(millSecondTime % 1000)
        local dateTb = { day, hour, min, sec, mill }
        local len = #dateTb
        if not showMill then
            len = len - 1
        end
        local startIndex = (len - expand) + 1
        local showTb = {}
        for i = startIndex, len do
            showTb[#showTb + 1] = dateTb[i]
        end
        local func = table.unpack or unpack
        if type(format) == 'string' then
            return string.format(format, func(dateTb, startIndex, len))
        elseif type(format) == 'table' then
            local formatStr = table.concat(table.insert(format, 1, ""), "%02d")
            return string.format(formatStr, func(dateTb, startIndex, len))
        end
        return "";
    end

    return t
end

local kit = TimeKit.New()
print(kit.TimeFormat(111000, 2, "%02d:%02dS"))

print(table.concat({"",11,11,11},"%s"))