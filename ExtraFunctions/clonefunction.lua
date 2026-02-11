return function(func)
    assert(typeof(func) == "function", string.format("bad argument to #1 'clonefunction' (function expected, got %s)", typeof(func)))
    
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
