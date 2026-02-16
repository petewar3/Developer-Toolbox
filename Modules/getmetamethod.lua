local metamethods = {
    __index = function(self)
        return self["_"]
    end,
    __newindex = function(self)
        self["_"] = "_"
    end,
    __namecall = function(self)
        self:_()
    end,
    __call = function(self)
        self()
    end,
    __len = function(self)
        return #self
    end,
    __lt = function(self)
        return self < 7
    end,
    __le = function(self)
        return self <= 7
    end,
    __add = function(self)
        self = self + 7
    end,
    __sub = function(self)
        self = self - 7
    end,
    __mul = function(self)
        self = self * 7
    end,
    __div = function(self)
        self = self / 7
    end,
    __mod = function(self)
        self = self % 7
    end,
    __pow = function(self)
        self = self ^ 7
    end,
    __unm = function(self)
        return -self
    end,
    __concat = function(self)
        return self .. "_"
    end,
    __idiv = function(self)
        self = self // 7
    end
}

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
