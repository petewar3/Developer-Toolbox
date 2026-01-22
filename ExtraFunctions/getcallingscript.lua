return function()
    local env = getfenv(2)
    if env and env.script then
        return env.script
    end
    
    return nil
end
