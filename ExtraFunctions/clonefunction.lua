function(func)
    if typeof(func) ~= "function" then
        return nil
    end
    
	local func_env = xpcall(setfenv, function(err, traceback)
		return err, traceback
	end, func, getfenv(func))
	
	if func_env then
		return function(...)
			return func(...)
		end
	end
	
	return coroutine.wrap(function(...)
		while true do
			func = coroutine.yield(func(...))
		end
	end)
end
