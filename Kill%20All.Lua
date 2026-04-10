local Players = game:GetService("Players")

local function killAllPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        local char = player.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Health = 0
            end
        end
    end
end

-- run it once
killAllPlayers()
