local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local OldNameCall 
OldNameCall = hookmetamethod(game, "__namecall", function(...) 
    local Self, Args = (...), ({select(2, ...)})

    if getnamecallmethod() == "Kick" and Self == Player then 
        return
    end

    return OldNameCall(...)
end)
