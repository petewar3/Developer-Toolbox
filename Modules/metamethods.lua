local num = math.random()

return {
    __index = function(self)
        return self["_"]
    end,
    __newindex = function(self)
        self["_"] = num
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
        return self < num
    end,
    __le = function(self)
        return self <= num
    end,
    __add = function(self)
        self = self + num
    end,
    __sub = function(self)
        self = self - num
    end,
    __mul = function(self)
        self = self * num
    end,
    __div = function(self)
        self = self / num
    end,
    __mod = function(self)
        self = self % num
    end,
    __pow = function(self)
        self = self ^ num
    end,
    __unm = function(self)
        return -self
    end,
    __concat = function(self)
        return self .. "_"
    end,
    __idiv = function(self)
        self = self // num
    end
}
