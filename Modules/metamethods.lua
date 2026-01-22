return {
    __index = function()
        return game["_"]
    end,
    __newindex = function()
        game["_"] = nil
    end,
    __namecall = function()
        game:_()
    end,
    __call = function()
        game()
    end,
    __len = function()
        return #game
    end,
    __lt = function()
        return game < num
    end,
    __le = function()
        return game <= num
    end,
    __add = function()
        game = game + num
    end,
    __sub = function()
        game = game - num
    end,
    __mul = function()
        game = game * num
    end,
    __div = function()
        game = game / num
    end,
    __mod = function()
        game = game % num
    end,
    __pow = function()
        game = game ^ num
    end,
    __unm = function()
        return -game
    end,
    __concat = function()
        return game .. "_"
    end,
    __idiv = function()
        game = game // num
    end
}
