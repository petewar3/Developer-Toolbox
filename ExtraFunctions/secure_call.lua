-- still in development
local old_traceback; old_traceback = hookfunction(getrenv().debug.traceback, function(_)
    local full_traceback = old_traceback(_)
    
    if checkcaller() then
        local lines = full_traceback:split("\n")
        return string.format("%s\n%s\n", lines[1], lines[3])
    end
    
    return full_traceback
end)

local old_info; old_info = hookfunction(getrenv().debug.info, function(level, what)
    if checkcaller() then
        return old_info(3, what)
    end
    
    return old_info(level, what)
end)

local setidentity = setidentity or setthreadidentity or set_thread_identity or setthreadcontext or set_thread_context or (syn and syn.set_thread_identity)

return function(func, ...)
    local func_type = typeof(func)
    
    assert(func_type == "function", string.format(
        "bad argument #1 to 'secure_call' (function expected, got %s)", func_type
    ))

    local calling_script = getcallingscript(func)

    local _, script_fenv = xpcall(function()
        return getsenv(calling_script)
    end, function()
        return getfenv(calling_script)
    end)
    
    return coroutine.wrap(function(...)
        setidentity(2)
        setfenv(0, script_fenv)
        setfenv(1, script_fenv)
        return func(...)
    end)(...)
end

--[[ just some usage here
local old; old = hookmetamethod(game, "__index", function(self, ...)
    local calling = getcallingscript(old)
    local callingscript = calling and cloneref(calling) or nil
    
    if typeof(callingscript) == "Instance" then
        print(callingscript:GetFullName())
    end
    
    if table.find(getscripts(), self) then
        return secure_call(old, self, ...) -- in game script :thumbsup:
    end
    
    return old(self, ...) -- core script or executor
end)]]
