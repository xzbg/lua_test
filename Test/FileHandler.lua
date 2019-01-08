FileHandler = {}

function FileHandler.New()
    local handler = {}

    function handler.ReadFile(fileName)
        local file = io.open('e:\\a.txt','r')
    end

    return handler
end
