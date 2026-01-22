local metamethods = loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Modules/metamethods.lua"))()

return function(instance, method)
    assert(typeof(instance) == "Instance", string.format("bad argument #1 'getmetamethod' (Instance expected, got %s)", typeof(instance)))
    assert(typeof(method) == "string", string.format("bad argument #2 'getmetamethod' (string expected, got %s)", typeof(method)))
    
    local metamethod = metamethods[method]
    assert(typeof(metamethod) == "function", string.format("bad argument #2 'getmetamethod' (invalid metamethod: %s)", method))

    local captured
    xpcall(function()
        metamethod(instance)
    end, function()
        captured = debug.info(2, "f")
    end)

    return captured
end
