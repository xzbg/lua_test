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
print(ParseDateTime(time, expand))
