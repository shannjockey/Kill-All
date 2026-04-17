local Players = game:GetService("Players")

local function killAllPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        -- skip a specific user
        if player.UserId ~= 123456 then
            local char = player.Character
            if char then
                local humanoid = char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.Health = 0
                end
            end
        end
    end
end

-- run it once
killAllPlayers()
