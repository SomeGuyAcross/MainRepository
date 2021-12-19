--[[
    It's maybe called globals injection.
    Might be useful for my future projects.
]]

local Module = {}

function Module.Add(Number1,Number2)
    return Number1 + Number2;
end

function Module.Init()
    getfenv(2).Add = Module.Add;
end

setmetatable(Module,{__call = Module.Init})

return Module