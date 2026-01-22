local metamethods = loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Modules/metamethods.lua"))()

return function(method)
    local func = metamethods[method]
    if not func then 
        return nil 
    end

    local success, result = xpcall(func, function(err)
        return debug.info(2, "f")
    end)

    if success then
        return result
    else
        return nil
    end
end
