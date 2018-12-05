TestObj = {}

function TestObj.New()
    local tbDispatch = {}
    local obj = {
        __index = function(obj, key)
            return data[key] or obj[key]
        end,
        __newindex = function(obj, key, value)
            local old = data[key]
            data[key] = value
            Dispatch(key, old, value)
        end,
        __add = function(obj, tb2)
            print(obj, tb2)
        end,
        __tostring = function(obj)
            for k, v in pairs(obj) do
                print(k, v)
            end

            return table.concat(obj, ",")
        end,
        __call = function(obj, params)
            print(params)
        end
    }
    -- local data = {}
    -- local tbDispatch = {}
    -- obj.id = 100
    -- obj.name = "999"

    -- local function Dispatch(key, old, value)
    --     local func = tbDispatch[key]
    --     if func then
    --         func(key, old, value)
    --     end
    -- end

    function obj.Register(key, func)
        tbDispatch[key] = func
    end
    -- setmetatable(obj, {})

    return obj
end
