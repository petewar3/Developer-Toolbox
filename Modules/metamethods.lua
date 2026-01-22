return {
    __index = function(self)
        return self["_"]
    end,
    __newindex = function(self)
        self["_"] = math.random()
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
        return self < math.random()
    end,
    __le = function(self)
        return self <= math.random()
    end,
    __add = function(self)
        self = self + math.random()
    end,
    __sub = function(self)
        self = self - math.random()
    end,
    __mul = function(self)
        self = self * math.random()
    end,
    __div = function(self)
        self = self / math.random()
    end,
    __mod = function(self)
        self = self % math.random()
    end,
    __pow = function(self)
        self = self ^ math.random()
    end,
    __unm = function(self)
        return -self
    end,
    __concat = function(self)
        return self .. "_"
    end,
    __idiv = function(self)
        self = self // math.random()
    end
}
