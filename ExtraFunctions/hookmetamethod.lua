if not hookfunction then
    return nil
end

local getmetamethod = loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Modules/getmetamethod.lua"))()

return function(instance, method, callback)
    assert(typeof(instance) == "Instance", string.format("bad argument to #1 'hookmetamethod' (instance expected, got %s)", typeof(instance)))
    assert(typeof(method) == "string", string.format("bad argument to #2 'hookmetamethod' (string expected, got %s)", typeof(method)))
    assert(typeof(callback) == "function", string.format("bad argument to #3 'hookmetamethod' (function expected, got %s)", typeof(callback)))

    local metamethod = getmetamethod(instance, method)
    assert(typeof(metamethod) == "function", string.format("bad argument to #2 'hookmetamethod' (invalid metamethod: %s)", method))
    
    local old_func; old_func = hookfunction(metamethod, callback)
    return old_func
end
