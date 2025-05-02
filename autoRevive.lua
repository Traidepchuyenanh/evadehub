local function autoRevive()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    -- Khi chết, tự revive
    humanoid.Died:Connect(function()
        wait(1)
        -- Revive bản thân
        if humanoid.Health == 0 then
            player:LoadCharacter()
        end
    end)
    
    -- Revive người chơi khác
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherCharacter = otherPlayer.Character
            if otherCharacter then
                local otherHumanoid = otherCharacter:FindFirstChildOfClass("Humanoid")
                if otherHumanoid and otherHumanoid.Health == 0 then
                    -- Load lại nhân vật người chơi khác
                    otherPlayer:LoadCharacter()
                end
            end
        end
    end
end

-- Gọi hàm revive
autoRevive()
