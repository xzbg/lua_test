local time = tonumber(arg[1])
local expand = tonumber(arg[2])
function ParseDateTime(secondTime, expand)
    local day = math.floor(secondTime / 86400)
    local hour = math.floor((secondTime % 86400) / 3600)
    local min = math.floor((secondTime % 86400 % 3600) / 60)
    local sec = math.floor(secondTime % 86400 % 3600 % 60)
    local date = {{day, "day"}, {hour, "hour"}, {min, "min"}, {sec, "sec"}}
    local str = ""
    local count = 0
    for i = 1, #date do
        if count <= 0 then
            if date[i][1] > 0 then
                str = str .. tostring(date[i][1]) .. date[i][2]
                count = count + 1
            end
        else
            str = str .. tostring(date[i][1]) .. date[i][2]
            count = count + 1
        end
        if expand and count >= expand then
            break
        end
    end
    if count <= 0 then
        local endIndex = #date
        str = str .. date[endIndex][1] .. date[endIndex][2]
    end
    return str
end

function TimeFormat1(millSecondTime, expand)
    local secondTime = millSecondTime / 1000
    local day = math.floor(secondTime / 86400)
    local hour = math.floor((secondTime % 86400) / 3600)
    local min = math.floor((secondTime % 86400 % 3600) / 60)
    local sec = math.floor(secondTime % 86400 % 3600 % 60)
    local mill = math.floor(millSecondTime % 1000)
    local dateTb = {day, hour, min, sec, mill}
    local index = next(dateTb)
    while index do
        if dateTb[index] > 0 then
            break
        end
        index = next(dateTb, index)
    end
    local str = ""
    if index == #dateTb then
        str = string.format("%d", 0)
    elseif index == #dateTb - 1 and expand and expand == 1 then
        str = string.format("%d", sec)
    else
        local count = 0
        for i = 1, #dateTb do
            if count <= 0 then
                if dateTb[i] > 0 then
                    str = str .. string.format("%02d", dateTb[i])
                    count = count + 1
                end
            else
                str = str .. string.format(":%02d", dateTb[i])
                count = count + 1
            end
            if expand and count >= expand then
                break
            end
        end
    end
    return str
end

print(TimeFormat1(time, expand))
