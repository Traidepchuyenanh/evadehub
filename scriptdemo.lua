local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Evade Hub", "Ocean")

local mainTab = window:NewTab("Main")
local mainSection = mainTab:NewSection("Controls")

mainSection:NewSlider("WalkSpeed", "Điều chỉnh tốc độ chạy", 100, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

mainSection:NewSlider("JumpPower", "Điều chỉnh lực nhảy", 150, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

mainSection:NewSlider("FOV", "Điều chỉnh FOV", 120, 70, function(v)
    game.Workspace.CurrentCamera.FieldOfView = v
end)

mainSection:NewSlider("Emote Dash Speed", "Tốc độ emote dash (chỉ visual)", 100, 1, function(v)
    _G.DashSpeed = v -- chưa có code dash, chỉ lưu giá trị tạm
end)
