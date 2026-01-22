local metamethods = loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Modules/metamethods.lua"))()

return function(instance, method)
    assert(typeof(instance) == "Instance", string.format("bad argument #1 'getmetamethod' (Instance expected, got %s)", typeof(instance)))
    assert(typeof(method) == "string", string.format("bad argument #2 'getmetamethod' (string expected, got %s)", typeof(method)))
    
    local metamethod = metamethods[method]
    assert(typeof(metamethod) == "function", string.format("bad argument #2 'getmetamethod' (invalid metamethod: %s)", method))

    local success, result = xpcall(function()
        return metamethod(instance)
    end, function(err)
        return debug.info(2, "f")
    end)

    if success then
        return result
    else
        return nil
    end
end
