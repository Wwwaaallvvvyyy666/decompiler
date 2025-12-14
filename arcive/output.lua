--[[
    Decompiled by Triplesixxx Lua 5.1 Decompiler v1.0.0
]]

local v1 = loadstring(game:HttpGet("https://sirius.menu/rayfield"))
local v2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/" .. "Library.lua"))
v2():SetDPIScale(85)
v2():SetWatermarkVisibility(true)
local v3 = game:GetService("RunService")
local v4 = game:GetService("Players")
local v5 = game:GetService("Workspace")
local v6 = tick()
local v7 = game:GetService("Stats")
v3.RenderStepped:Connect(function()
    vu1 = vu1 + 1
    local v100 = tick()
    if 1 <= v100 - vu2 then
        vu3 = vu1
        vu2 = tick()
        vu1 = 0
    end
    local v101 = math.floor(vu3)
    vu4:SetWatermark(vu2)
end)
local v8 = v7:CreateWindow({
    Name = "Swiftbara Hub | Weird Gun Game | Version 2.0",
    Icon = -2147483648,
    LoadingTitle = "Swiftbara Hub",
    LoadingSubtitle = "by Scripybara",
    ShowText = "Swiftbara",
    Theme = "Dark Blue",
    ToggleUIKeybind = "K",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {Enabled = true, FolderName = nil, FileName = "Swiftbara Hub"},
    Discord = {Enabled = false, Invite = "https://discord.gg/TmwfyNBSgk", RememberJoins = true},
    KeySystem = false,
    KeySettings = {
    Title = "Untitled",
    Subtitle = "Key System",
    Note = "No method of obtaining the key is provided",
    FileName = "Key",
    SaveKey = true,
    GrabKeyFromSie = false,
    Key = {"FUCK"},
},
})
local v9 = v8:CreateTab("Combat", "swords")
local v10 = v9:CreateSection("Aim settings")
local v11 = v8:CreateTab("Visual", "eye")
local v12 = v11:CreateSection("Viusual")
local v13 = v8:CreateTab("Misc", -2147483648)
local v14 = v8:CreateTab("Movement", "person-standing")
local v15 = v8:CreateTab("Discord", "disc")
local v16 = v15:CreateSection("Discord here!")
local v17 = v9:CreateParagraph({Title = "Swiftbara Hub | Version 2.0:", Content = "Auto Kill, Fix error Gun Mod, Better UI, More options"})
local v18 = v14:CreateSection("Speed Settings")
local v19 = v14:CreateToggle({Name = "Speed Changer", CurrentValue = false, Flag = "SpeedHackToggle", Callback = function(p1)
    vu1 = p1
    if p1 then
        local v202 = game:GetService("Players")
        local v203 = game:GetService("RunService")
        if v202.LocalPlayer.Character then
            local v204 = v202.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if v204 then
                vu2 = v204.WalkSpeed
            end
        end
        local v205 = v203.Heartbeat:Connect(function()
        if vu1 then
            vu2()
        end
    end)
        local v206 = v202.LocalPlayer.CharacterAdded:Connect(function(p1)
        task.wait(0.5)
        if vu1 then
            vu2()
            local v604 = p1:FindFirstChildOfClass("Humanoid")
            if v604 then
                vu3 = v604.WalkSpeed
                v604.WalkSpeed = vu3 * vu4
            end
        end
    end)
        local v207 = v202.LocalPlayer.CharacterRemoving:Connect(function()
        vu1()
    end)
        function()
        if vu1 then
            if not vu2.Character then
                return
            end
        else
        end
        local v302 = vu2.Character:FindFirstChildOfClass("Humanoid")
        if v302 then
            if 0 < v302.Health then
                v302.WalkSpeed = vu3 * vu4
            end
        end
    end()
        table.insert(vu4, v205)
        table.insert(vu4, v206)
        table.insert(vu4, v207)
        local v208 = string.format("Speed multiplier: x%.1f", vu3)
        vu5:Notify({Title = "Speed Hack Enabled", Content = v208, Duration = 3, Image = -2147483648})
    else
        local v202, v203, v209 = ipairs(vu4)
        for v204, v210 in v202, v203, v209 do
            pcall(function()
        vu1:Disconnect()
    end)
        end
        vu4 = {}
        if game:GetService("Players").LocalPlayer.Character then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = vu2
            end
        end
        vu5:Notify({Title = "Speed Hack Disabled", Content = "Walk speed reset to normal", Duration = 2, Image = -2147483648})
    end
end})
local v20 = v14:CreateSlider({
    Name = "Speed Multiplier",
    Range = {1, 10},
    Increment = 0.5,
    Suffix = "x Speed",
    CurrentValue = 2,
    Flag = "SpeedMultiplierSlider",
    Callback = function(p1)
    vu1 = p1
    if vu2 then
        local v311 = game:GetService("Players")
        if v311.LocalPlayer.Character then
            local v312 = v311.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if v312 then
                v312.WalkSpeed = vu3 * vu1
            end
        end
        local v313 = string.format("Speed multiplier: x%.1f", vu1)
        vu4:Notify({Title = "Speed Updated", Content = v313, Duration = 2, Image = -2147483648})
    end
end,
})
local v21 = v14:CreateButton({Name = "Reset Speed", Callback = function()
    local v414 = game:GetService("Players")
    if v414.LocalPlayer.Character then
        local v415 = v414.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if v415 then
            vu1 = 16
            v415.WalkSpeed = vu1
            vu2 = 2
            if vu3 then
                vu3:Set(2)
            end
            vu4:Notify({Title = "Speed Reset", Content = "Walk speed reset to default", Duration = 2, Image = -2147483648})
        end
    end
end})
local v22 = v14:CreateSection("Bunny Hop Settings")
local v23 = v14:CreateToggle({Name = "Bunny Hop (Bhop)", CurrentValue = false, Flag = "BhopToggle", Callback = function(p1)
    vu1 = p1
    if p1 then
        local v516 = game:GetService("Players")
        local v517 = game:GetService("UserInputService")
        local v518 = game:GetService("RunService")
        local v519 = v518.RenderStepped:Connect(function()
        if vu1 then
            if not vu2.Character then
                return
            end
        else
        end
        local v818 = vu2.Character:FindFirstChildOfClass("Humanoid")
        if v818 then
            if v818.Health <= 0 then
                return
            end
        else
        end
        local v819 = vu3:IsKeyDown(Enum.KeyCode.Space)
        if v819 then
            if vu4() then
                vu5()
                if vu2.Character:FindFirstChild("HumanoidRootPart") then
                    local v820 = vu2.Character:GetPrimaryPartCFrame()
                    local v821 = Vector3.new(v820.LookVector.X * vu6, vu2.Character:FindFirstChild("HumanoidRootPart").Velocity.Y, v820.LookVector.Z * vu6)
                    vu2.Character:FindFirstChild("HumanoidRootPart").Velocity = v821
                end
            end
        end
    end)
        local v520 = v517.InputBegan:Connect(function(p1, p2)
        if p2 then
            return
        end
        if p1.KeyCode == Enum.KeyCode.Space then
            if vu1 then
                local v922 = vu2()
                if v922 then
                    vu3()
                end
            end
        end
    end)
        table.insert(vu3, v519)
        table.insert(vu3, v520)
        vu4:Notify({Title = "Bhop Enabled", Content = "Bunny Hop activated! Press SPACE to jump.", Duration = 3, Image = -2147483648})
    else
        local v516, v517, v518 = ipairs(vu3)
        for v521, v522 in v516, v517, v518 do
            pcall(function()
        vu1:Disconnect()
    end)
        end
        vu3 = {}
        vu4:Notify({Title = "Bhop Disabled", Content = "Bunny Hop deactivated.", Duration = 2, Image = -2147483648})
    end
end})
local v24 = v14:CreateSlider({
    Name = "Bhop Speed",
    Range = {10, 100},
    Increment = 5,
    Suffix = "Speed",
    CurrentValue = 25,
    Flag = "BhopSpeedSlider",
    Callback = function(p1)
    vu1 = p1
end,
})
local v25 = v14:CreateToggle({Name = "Auto Strafe", CurrentValue = false, Flag = "AutoStrafeToggle", Callback = function(p1)
    if p1 then
        vu1:Notify({Title = "Auto Strafe Enabled", Content = "Automatic strafing activated.", Duration = 2, Image = -2147483648})
    else
        vu1:Notify({Title = "Auto Strafe Disabled", Content = "Automatic strafing deactivated.", Duration = 2, Image = -2147483648})
    end
end})
local v26 = v14:CreateButton({Name = "Reset Velocity", Callback = function()
    local v823 = game:GetService("Players")
    if v823.LocalPlayer.Character then
        local v824 = v823.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if v824 then
            local v825 = Vector3.new(0, v824.Velocity.Y, 0)
            v824.Velocity = v825
            vu1:Notify({Title = "Velocity Reset", Content = "Horizontal velocity has been reset.", Duration = 2, Image = -2147483648})
        end
    end
end})
local v27 = v15:CreateButton({Name = "Join Discord", Callback = function()
    setclipboard("https://discord.gg/TmwfyNBSgk")
    local v926 = game:GetService("StarterGui")
    v926:SetCore("SendNotification", {Title = "�� Copied Discord!", Text = "Discord link copied to clipboard", Duration = 3})
end})
local v28 = v15:CreateSection("Join Discord for updates and more scripts!")
local v29 = v11:CreateToggle({Name = "ESP", CurrentValue = false, Flag = "ESP_Toggle", Callback = function(p1)
    if p1 then
        local v1027 = game:GetService("Workspace")
        local v1028 = Vector3.new(0, 0.5, 0)
        local v1029 = Vector3.new(0, 3, 0)
        local v1030 = Color3.fromRGB(150, 150, 150)
        _G.ESP_Settings = {enabled = true, dot_size = 5, show_dead_players = true, dead_player_color = v1030}
        _G.ESP_PlayerDrawings = {}
        _G.ESP_Connections = {}
        local v1031 = game.Players.LocalPlayer:FindFirstChild("Team")
        if v1031 then
            table.insert(_G.ESP_Connections, game.Players.LocalPlayer.Team.Changed:Connect(function()
        vu1()
    end))
        end
        local v1031, v1032, v1033 = pairs(game.Players:GetPlayers())
        for v1034, v1035 in v1031, v1032, v1033 do
            if v1035 ~= game.Players.LocalPlayer then
                function(p1)
        if _G.ESP_PlayerDrawings[p1] then
            return
        end
        local v1429 = Drawing.new("Square")
        v1429.Visible = false
        v1429.Thickness = 2
        v1429.Transparency = 1
        v1429.Filled = false
        local v1430 = Drawing.new("Text")
        v1430.Visible = false
        v1430.Size = 14
        v1430.Font = Drawing.Fonts.UI
        v1430.Center = true
        v1430.Outline = true
        local v1431 = Color3.new(0, 0, 0)
        v1430.OutlineColor = v1431
        v1430.OutlineSize = 1
        _G.ESP_PlayerDrawings[p1] = {box = v1429, name = v1430}
        local v1432 = game:GetService("RunService")
        table.insert(_G.ESP_Connections, v1432.RenderStepped:Connect(function()
            if _G.ESP_Settings.enabled then
                if not _G.ESP_PlayerDrawings[vu1] then
                    if vu2 then
                        vu2:Disconnect()
                    end
                    return
                end
            else
            end
            if vu1.Character then
                local v1529 = vu1.Character:FindFirstChild("HumanoidRootPart")
                if v1529 then
                    if vu1 ~= vu3 then
                        if not vu4(vu1) then
                            if not _G.ESP_Settings.show_dead_players then
                                vu5.Visible = false
                                vu6.Visible = false
                                return
                            end
                        end
                        local v1530 = vu1.Character:FindFirstChild("Head")
                        if not v1530 then
                            vu5.Visible = false
                            vu6.Visible = false
                            return
                        end
                        local v1531, v1532 = vu7(vu8, vu1.Character.HumanoidRootPart.Position)
                        local v1533 = vu7(vu8, v1530.Position + vu9)
                        local v1534 = vu7(vu8, vu1.Character.HumanoidRootPart.Position - vu10)
                        if v1532 then
                            local v1535 = vu11(vu1, not vu4(vu1))
                            vu5.Color = v1535
                            vu6.Color = v1535
                            local v1536 = Vector2.new(1000 / v1531.Z, v1533.Y - v1534.Y)
                            vu5.Size = v1536
                            vu5.Position = Vector2.new(v1531.X - vu5.Size.X / 2, v1531.Y - vu5.Size.Y / 2)
                            vu6.Position = Vector2.new(v1531.X, v1531.Y - vu5.Size.Y / 2 - 20)
                            if not vu4(vu1) then
                                if not " (DEAD)" then
                                end
                            else
                            end
                            vu6.Text = vu1.Name .. ""
                            vu5.Visible = true
                            vu6.Visible = true
                        else
                            vu5.Visible = false
                            vu6.Visible = false
                            vu5.Visible = false
                            vu6.Visible = false
                        end
                    end
                end
            end
        end))
    end(v1035)
                function(p1)
        p1.CharacterAdded:Connect(function(p1)
            if vu1 ~= vu2 then
                task.wait(0.5)
                if _G.ESP_PlayerDrawings[vu1] then
                    vu3(vu1)
                end
                vu4(vu1)
            end
        end)
        vu3.CharacterRemoving:Connect(function()
            if vu1 ~= vu2 then
                if _G.ESP_PlayerDrawings[vu1] then
                    if _G.ESP_PlayerDrawings[vu1] then
                        if _G.ESP_PlayerDrawings[vu1].box then
                            _G.ESP_PlayerDrawings[vu1].box.Visible = false
                        end
                        if _G.ESP_PlayerDrawings[vu1].name then
                            _G.ESP_PlayerDrawings[vu1].name.Visible = false
                        end
                    end
                end
            end
        end)
    end(v1035)
                local v1036 = v1035:FindFirstChild("Team")
                if v1036 then
                    table.insert(_G.ESP_Connections, v1035.Team.Changed:Connect(function()
        if _G.ESP_PlayerDrawings[vu1] then
            local v2145 = vu2(vu1)
            local v2146 = vu3(vu1, not v2145)
            if _G.ESP_PlayerDrawings[vu1].box then
                _G.ESP_PlayerDrawings[vu1].box.Color = v2146
            end
            if _G.ESP_PlayerDrawings[vu1].name then
                _G.ESP_PlayerDrawings[vu1].name.Color = v2146
                if not v2145 then
                    if not " (DEAD)" then
                    end
                else
                end
                _G.ESP_PlayerDrawings[vu1].name.Text = vu1.Name .. ""
            end
        end
    end))
                end
            end
        end
        table.insert(_G.ESP_Connections, game.Players.PlayerAdded:Connect(function(p1)
        vu1(p1)
        vu2(p1)
    end))
        table.insert(_G.ESP_Connections, game.Players.PlayerRemoving:Connect(function(p1)
        vu1(p1)
    end))
        table.insert(_G.ESP_Connections, game.Players.LocalPlayer.CharacterAdded:Connect(function()
        local v2347, v2348, v2349 = pairs(_G.ESP_PlayerDrawings)
        for v2350, v2351 in v2347, v2348, v2349 do
            if v2350 then
                for v2350, v2351 in v2347, v2348, v2349 do
                    if v2350.Parent then
                        for v2350, v2351 in v2347, v2348, v2349 do
                            vu1(v2350)
                            vu2(v2350)
                        end
                    end
                end
            end
        end
    end))
    else
        _G.ESP_Settings.enabled = false
        if _G.ESP_Connections then
            local v1037, v1027, v1038 = ipairs(_G.ESP_Connections)
            for v1039, v1028 in v1037, v1027, v1038 do
                if v1028 then
                    for v1039, v1028 in v1037, v1027, v1038 do
                        if typeof(v1028) == "RBXScriptConnection" then
                            for v1039, v1028 in v1037, v1027, v1038 do
                                v1028:Disconnect()
                            end
                        end
                    end
                end
            end
            _G.ESP_Connections = {}
        end
        if _G.ESP_PlayerDrawings then
            local v1037, v1027, v1038 = pairs(_G.ESP_PlayerDrawings)
            for v1039, v1028 in v1037, v1027, v1038 do
                if v1028 then
                    for v1039, v1028 in v1037, v1027, v1038 do
                        if v1028.box then
                            if v1028.box.Remove then
                                v1028.box:Remove()
                            end
                        end
                        if v1028.name then
                            for v1039, v1028 in v1037, v1027, v1038 do
                                if v1028.name.Remove then
                                    for v1039, v1028 in v1037, v1027, v1038 do
                                        v1028.name:Remove()
                                    end
                                end
                            end
                        end
                    end
                end
            end
            _G.ESP_PlayerDrawings = {}
        end
    end
end})
local v30 = v11:CreateToggle({Name = "Lines", CurrentValue = false, Flag = "SimpleEnemyLinesToggle", Callback = function(p1)
    if p1 then
        local v1140 = Color3.fromRGB(255, 0, 0)
        _G.SimpleLinesESP = {
            enabled = true,
            drawings = {},
            connections = {},
            lineColor = v1140,
            lineThickness = 1,
        }
        local v1141 = vu1:CreateColorPicker({Name = "Lines Color", Color = _G.SimpleLinesESP.lineColor, Flag = "LinesColorPicker", Callback = function(p1)
        _G.SimpleLinesESP.lineColor = p1
        if _G.SimpleLinesESP.drawings then
            local v1240, v1241, v1242 = pairs(_G.SimpleLinesESP.drawings)
            for v1243, v1244 in v1240, v1241, v1242 do
                if v1244 then
                    for v1243, v1244 in v1240, v1241, v1242 do
                        v1244.Color = p1
                    end
                end
            end
        end
    end})
        local v1142 = vu1:CreateSlider({
            Name = "Lines Thickness",
            Range = {0.10000000000000001, 5},
            Increment = 0.10000000000000001,
            CurrentValue = 1,
            Flag = "LinesThicknessSlider",
            Callback = function(p1)
        _G.SimpleLinesESP.lineThickness = p1
        if _G.SimpleLinesESP.drawings then
            local v1345, v1346, v1347 = pairs(_G.SimpleLinesESP.drawings)
            for v1348, v1349 in v1345, v1346, v1347 do
                if v1349 then
                    for v1348, v1349 in v1345, v1346, v1347 do
                        v1349.Thickness = p1
                    end
                end
            end
        end
    end,
        })
        local v1143 = game:GetService("RunService")
        table.insert(_G.SimpleLinesESP.connections, v1143.RenderStepped:Connect(function()
        if _G.SimpleLinesESP then
            if not _G.SimpleLinesESP.enabled then
                return
            end
        else
        end
        local v1752 = Vector2.new(vu1.ViewportSize.X / 2, vu1.ViewportSize.Y / 2)
        local v1753, v1754, v1755 = pairs(_G.SimpleLinesESP.drawings)
        for v1756, v1757 in v1753, v1754, v1755 do
            if v1756 then
                for v1756, v1757 in v1753, v1754, v1755 do
                    if v1756.Parent then
                        for v1756, v1757 in v1753, v1754, v1755 do
                            if v1757 then
                                for v1756, v1757 in v1753, v1754, v1755 do
                                    local v1758 = vu2(v1756)
                                    if not v1758 then
                                    else
                                        if v1756.Character then
                                            if v1756.Character:FindFirstChild("HumanoidRootPart") then
                                                if v1756 == vu3 then
                                                else
                                                    if not vu4(v1756) then
                                                    end
                                                    if false then
                                                        local v1759, v1760 = vu1:WorldToViewportPoint(v1756.Character.HumanoidRootPart.Position)
                                                        if v1760 then
                                                            v1757.From = v1752
                                                            local v1761 = Vector2.new(v1759.X, v1759.Y)
                                                            v1757.To = v1761
                                                            v1757.Visible = true
                                                            for v1756, v1757 in v1753, v1754, v1755 do
                                                                v1757.Visible = false
                                                                for v1756, v1757 in v1753, v1754, v1755 do
                                                                    v1757.Visible = false
                                                                end
                                                            end
                                                        else
                                                        end
                                                    else
                                                    end
                                                end
                                            else
                                            end
                                        else
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end))
        local v1144 = game.Players.PlayerAdded:Connect(function(p1)
        if p1 ~= vu1 then
            vu2(p1)
        end
    end)
        local v1145 = game.Players.PlayerRemoving:Connect(function(p1)
        if _G.SimpleLinesESP.drawings[p1] then
            _G.SimpleLinesESP.drawings[p1]:Remove()
            _G.SimpleLinesESP.drawings[p1] = nil
        end
    end)
        table.insert(_G.SimpleLinesESP.connections, v1144)
        table.insert(_G.SimpleLinesESP.connections, v1145)
        local v1146, v1147, v1148 = ipairs(game.Players:GetPlayers())
        for v1149, v1150 in v1146, v1147, v1148 do
            if v1150 ~= game.Players.LocalPlayer then
                for v1149, v1150 in v1146, v1147, v1148 do
                    function(p1)
        if _G.SimpleLinesESP.drawings[p1] then
            return
        end
        local v1651 = Drawing.new("Line")
        v1651.Visible = false
        v1651.Thickness = _G.SimpleLinesESP.lineThickness
        v1651.Color = _G.SimpleLinesESP.lineColor
        _G.SimpleLinesESP.drawings[p1] = v1651
    end(v1150)
                end
            end
        end
    else
        if _G.SimpleLinesESP then
            _G.SimpleLinesESP.enabled = false
            local v1151, v1152, v1141 = ipairs(_G.SimpleLinesESP.connections)
            for v1142, v1140 in v1151, v1152, v1141 do
                pcall(function()
        vu1:Disconnect()
    end)
            end
            local v1151, v1152, v1141 = pairs(_G.SimpleLinesESP.drawings)
            for v1142, v1140 in v1151, v1152, v1141 do
                pcall(function()
        vu1:Remove()
    end)
            end
            _G.SimpleLinesESP = nil
        end
    end
end})
local v31 = v11:CreateToggle({Name = "Health", CurrentValue = false, Flag = "ESPHealthToggle", Callback = function(p1)
    if p1 then
        _G.ESPHealth = {
            enabled = true,
            drawings = {},
            connections = {},
            barWidth = 2,
            barOffset = 5,
            showMaxHealth = true,
        }
        local v1253 = game:GetService("RunService")
        table.insert(_G.ESPHealth.connections, v1253.RenderStepped:Connect(function()
        if _G.ESPHealth then
            if not _G.ESPHealth.enabled then
                return
            end
        else
        end
        local v1757, v1758, v1759 = pairs(_G.ESPHealth.drawings)
        for v1760, v1761 in v1757, v1758, v1759 do
            if v1760 then
                for v1760, v1761 in v1757, v1758, v1759 do
                    if v1760.Parent then
                        for v1760, v1761 in v1757, v1758, v1759 do
                            if v1761 then
                                for v1760, v1761 in v1757, v1758, v1759 do
                                    local v1762 = vu1(v1760)
                                    if not v1762 then
                                    else
                                        if v1760.Character then
                                            if v1760.Character:FindFirstChild("HumanoidRootPart") then
                                                if v1760 == vu2 then
                                                else
                                                    if not vu3(v1760) then
                                                    end
                                                    if false then
                                                        local v1763 = v1760.Character:FindFirstChild("Humanoid")
                                                        local v1764 = v1760.Character:FindFirstChild("HumanoidRootPart")
                                                        if v1763 then
                                                            if v1764 then
                                                                local v1765, v1766 = vu4:WorldToViewportPoint(v1764.Position)
                                                                if v1766 then
                                                                    local v1767 = Vector2.new(_G.ESPHealth.barWidth, 1000 / v1765.Z)
                                                                    v1761.bgBar.Size = v1767
                                                                    v1761.bgBar.Position = Vector2.new(v1765.X + 1000 / v1765.Z * 0.59999999999999998 / 2 + _G.ESPHealth.barOffset, v1765.Y - 1000 / v1765.Z / 2)
                                                                    v1761.bgBar.Visible = true
                                                                    local v1768 = Vector2.new(_G.ESPHealth.barWidth, 1000 / v1765.Z * v1763.Health / v1763.MaxHealth)
                                                                    v1761.healthBar.Size = v1768
                                                                    v1761.healthBar.Position = Vector2.new(v1765.X + 1000 / v1765.Z * 0.59999999999999998 / 2 + _G.ESPHealth.barOffset, v1765.Y - 1000 / v1765.Z / 2 + 1000 / v1765.Z - 1000 / v1765.Z * v1763.Health / v1763.MaxHealth)
                                                                    v1761.healthBar.Color = vu5(v1763.Health / v1763.MaxHealth)
                                                                    v1761.healthBar.Visible = true
                                                                    if _G.ESPHealth.showMaxHealth then
                                                                        local v1769 = math.floor(v1763.MaxHealth)
                                                                    end
                                                                    v1761.healthText.Text = math.floor(v1763.Health) .. "/" .. v1769
                                                                    local v1770 = Vector2.new(v1765.X + 1000 / v1765.Z * 0.59999999999999998 / 2 + _G.ESPHealth.barOffset + _G.ESPHealth.barWidth + 2, v1765.Y - 1000 / v1765.Z / 2 + 1000 / v1765.Z / 2 - 7)
                                                                    v1761.healthText.Position = v1770
                                                                    v1761.healthText.Color = vu5(v1763.Health / v1763.MaxHealth)
                                                                    v1761.healthText.Visible = true
                                                                    for v1760, v1761 in v1757, v1758, v1759 do
                                                                        v1761.bgBar.Visible = false
                                                                        v1761.healthBar.Visible = false
                                                                        v1761.healthText.Visible = false
                                                                        for v1760, v1761 in v1757, v1758, v1759 do
                                                                            v1761.bgBar.Visible = false
                                                                            v1761.healthBar.Visible = false
                                                                            v1761.healthText.Visible = false
                                                                            for v1760, v1761 in v1757, v1758, v1759 do
                                                                                v1761.bgBar.Visible = false
                                                                                v1761.healthBar.Visible = false
                                                                                v1761.healthText.Visible = false
                                                                            end
                                                                        end
                                                                    end
                                                                else
                                                                end
                                                            else
                                                            end
                                                        else
                                                        end
                                                    else
                                                    end
                                                end
                                            else
                                            end
                                        else
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end))
        local v1254 = game.Players.PlayerAdded:Connect(function(p1)
        if p1 ~= vu1 then
            vu2(p1)
        end
    end)
        local v1255 = game.Players.PlayerRemoving:Connect(function(p1)
        if _G.ESPHealth.drawings[p1] then
            local v1971, v1972, v1973 = pairs(_G.ESPHealth.drawings[p1])
            for v1974, v1975 in v1971, v1972, v1973 do
                v1975:Remove()
            end
            _G.ESPHealth.drawings[p1] = nil
        end
    end)
        table.insert(_G.ESPHealth.connections, v1254)
        table.insert(_G.ESPHealth.connections, v1255)
        local v1256, v1257, v1258 = ipairs(game.Players:GetPlayers())
        for v1259, v1260 in v1256, v1257, v1258 do
            if v1260 ~= game.Players.LocalPlayer then
                for v1259, v1260 in v1256, v1257, v1258 do
                    function(p1)
        if _G.ESPHealth.drawings[p1] then
            return
        end
        local v1654 = Drawing.new("Square")
        {bgBar = v1654}.bgBar.Visible = false
        v1655.bgBar.Thickness = 1
        local v1656 = Color3.fromRGB(50, 50, 50)
        v1655.bgBar.Color = v1656
        v1655.bgBar.Filled = true
        v1655.bgBar.Transparency = 0.5
        v1655.bgBar.ZIndex = 1
        v1655.healthBar = Drawing.new("Square")
        v1655.healthBar.Visible = false
        v1655.healthBar.Thickness = 1
        v1655.healthBar.Filled = true
        v1655.healthBar.Transparency = 0.80000000000000004
        v1655.healthBar.ZIndex = 2
        v1655.healthText = Drawing.new("Text")
        v1655.healthText.Visible = false
        v1655.healthText.Size = 14
        v1655.healthText.Font = Drawing.Fonts.UI
        v1655.healthText.Outline = true
        v1655.healthText.OutlineColor = Color3.new(0, 0, 0)
        v1655.healthText.ZIndex = 3
        _G.ESPHealth.drawings[p1] = v1655
    end(v1260)
                end
            end
        end
    else
        if _G.ESPHealth then
            _G.ESPHealth.enabled = false
            local v1261, v1262, v1263 = ipairs(_G.ESPHealth.connections)
            for v1264, v1265 in v1261, v1262, v1263 do
                pcall(function()
        vu1:Disconnect()
    end)
            end
            local v1261, v1262, v1263 = pairs(_G.ESPHealth.drawings)
            for v1264, v1265 in v1261, v1262, v1263 do
                local v1266, v1267, v1253 = pairs(function(p1)
        if 0.69999999999999996 <= p1 then
            return Color3.fromRGB(0, 255, 0)
            return Color3.fromRGB
        end
        if 0.29999999999999999 <= p1 then
            return Color3.fromRGB(255, 255, 0)
            return Color3.fromRGB
        end
        return Color3.fromRGB(255, 0, 0)
        return Color3.fromRGB
    end)
                for v1254, v1255 in v1266, v1267, v1253 do
                    pcall(function()
        vu1:Remove()
    end)
                end
            end
            _G.ESPHealth = nil
        end
    end
end})
local v32 = v11:CreateToggle({Name = "Distance", CurrentValue = false, Flag = "ShowDistanceToggle", Callback = function(p1)
    if p1 then
        local v1368 = game:GetService("Players")
        local v1369 = game:GetService("RunService")
        local v1371 = v1369.RenderStepped:Connect(function()
        if vu1.Character then
            vu2()
        end
    end)
        v1368.PlayerAdded:Connect(function(p1)
        vu1(p1)
    end)
        v1368.PlayerRemoving:Connect(function(p1)
        vu1(p1)
    end)
        local v1371, v1372, v1373 = ipairs(v1368:GetPlayers())
        for v1374, v1375 in v1371, v1372, v1373 do
            function(p1)
        if p1 == vu1 then
            return
        end
        if vu2[p1] then
            return
        end
        local v1468 = Drawing.new("Text")
        v1468.Text = ""
        v1468.Size = 16
        v1468.Center = true
        v1468.Outline = true
        local v1469 = Color3.fromRGB(255, 255, 255)
        v1468.Color = v1469
        v1468.Visible = false
        v1468.Font = 2
        vu2[p1] = v1468
    end(v1375)
        end
        _G.DistanceDisplayConnection = v1371
        _G.DistanceTexts = v1370
    else
        if _G.DistanceDisplayConnection then
            _G.DistanceDisplayConnection:Disconnect()
            _G.DistanceDisplayConnection = nil
        end
        if _G.DistanceTexts then
            local v1368, v1369, v1376 = pairs(_G.DistanceTexts)
            for v1377, v1370 in v1368, v1369, v1376 do
                v1370:Remove()
            end
            _G.DistanceTexts = nil
        end
    end
end})
local v33 = v11:CreateToggle({Name = "Chams", CurrentValue = false, Flag = "SimpleChamsToggle", Callback = function(p1)
    if p1 then
        local v1478 = game:GetService("Players")
        _G.ChamsHighlights = {}
        local v1479, v1480, v1481 = ipairs(v1478:GetPlayers())
        for v1482, v1483 in v1479, v1480, v1481 do
            if v1483 ~= v1478.LocalPlayer then
                for v1482, v1483 in v1479, v1480, v1481 do
                    if v1483.Character then
                        for v1482, v1483 in v1479, v1480, v1481 do
                            local v1484 = Instance.new("Highlight")
                            v1484.Parent = v1483.Character
                            v1484.Adornee = v1483.Character
                            v1484.FillTransparency = 0.29999999999999999
                            v1484.OutlineTransparency = 0.20000000000000001
                            v1484.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                            local v1485 = Color3.fromRGB(255, 0, 0)
                            local v1486 = Color3.fromRGB(200, 0, 0)
                            if v1483.Team == v1478.LocalPlayer.Team then
                                if not v1483.Neutral then
                                    if not v1478.LocalPlayer.Neutral then
                                        local v1487 = Color3.fromRGB(0, 255, 0)
                                    end
                                end
                            end
                            v1484.FillColor = v1487
                            v1484.OutlineColor = Color3.fromRGB(0, 200, 0)
                            _G.ChamsHighlights[v1483] = v1484
                        end
                    end
                end
            end
        end
    else
        if _G.ChamsHighlights then
            local v1478, v1488, v1479 = pairs(_G.ChamsHighlights)
            for v1480, v1481 in v1478, v1488, v1479 do
                pcall(function()
        vu1:Destroy()
    end)
            end
            _G.ChamsHighlights = nil
        end
    end
end})
local v34 = Color3.fromRGB(255, 0, 0)
local v35 = v11:CreateColorPicker({Name = "Enemy Color", Color = v34, Flag = "EnemyColorPicker", Callback = function(p1)
    if _G.ChamsHighlights then
        local v1589, v1590, v1591 = pairs(_G.ChamsHighlights)
        for v1592, v1593 in v1589, v1590, v1591 do
            if v1592.Team == LocalPlayer.Team then
                if not v1592.Neutral then
                    if LocalPlayer.Neutral then
                        for v1592, v1593 in v1589, v1590, v1591 do
                            v1593.FillColor = p1
                            local v1594 = math.floor(p1.R * 200)
                            local v1595 = math.floor(p1.G * 200)
                            local v1596 = Color3.fromRGB(...)
                            v1593.OutlineColor = v1596
                        end
                    end
                else
                end
            else
            end
        end
    end
end})
local v36 = Color3.fromRGB(0, 255, 0)
local v37 = v11:CreateColorPicker({Name = "Team Color", Color = v36, Flag = "TeamColorPicker", Callback = function(p1)
    if _G.ChamsHighlights then
        local v1697, v1698, v1699 = pairs(_G.ChamsHighlights)
        for v1700, v1701 in v1697, v1698, v1699 do
            if v1700.Team == LocalPlayer.Team then
                for v1700, v1701 in v1697, v1698, v1699 do
                    if not v1700.Neutral then
                        for v1700, v1701 in v1697, v1698, v1699 do
                            if not LocalPlayer.Neutral then
                                for v1700, v1701 in v1697, v1698, v1699 do
                                    v1701.FillColor = p1
                                    local v1702 = math.floor(p1.R * 200)
                                    local v1703 = math.floor(p1.G * 200)
                                    local v1704 = Color3.fromRGB(...)
                                    v1701.OutlineColor = v1704
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end})
local v38 = v11:CreateSlider({
    Name = "Chams Transparency",
    Range = {0, 100},
    Increment = 5,
    Suffix = "%",
    CurrentValue = 30,
    Flag = "ChamsTransparency",
    Callback = function(p1)
    if _G.ChamsHighlights then
        local v1805, v1806, v1807 = pairs(_G.ChamsHighlights)
        for v1808, v1809 in v1805, v1806, v1807 do
            v1809.FillTransparency = p1 / 100
            v1809.OutlineTransparency = p1 / 100 + 0.10000000000000001
        end
    end
end,
})
local v39 = v13:CreateButton({Name = "Better Crosshair ( !1 click only!)", Callback = function()
    local v2121 = game:GetService("RunService")
    local v2122 = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    local v2123 = Color3.fromRGB(255, 0, 0)
    for v2124 = 1, 4 do
        local v2125 = Drawing.new("Line")
        v2125.Color = v2123
        v2125.Thickness = 2
        v2125.Visible = true
        table.insert({}, v2125)
    end
    local v2126 = Drawing.new("Circle")
    v2126.Radius = 2
    v2126.Position = v2122
    v2126.Color = v2123
    v2126.Filled = true
    v2126.Visible = true
    local v2127 = Drawing.new("Text")
    v2127.Text = "Scripybara"
    local v2128 = Vector2.new(v2122.X - 20, v2122.Y + 20)
    v2127.Position = v2128
    v2127.Size = 16
    v2127.Center = true
    v2127.Outline = true
    v2127.Color = Color3.new(1, 1, 1)
    v2127.Visible = true
    v2127.Font = 2
    Drawing.new("Text").Text = ".YT"
    Drawing.new("Text").Position = Vector2.new(v2122.X + 35, v2122.Y + 20)
    Drawing.new("Text").Size = 16
    Drawing.new("Text").Center = true
    Drawing.new("Text").Outline = true
    Drawing.new("Text").Color = Color3.fromRGB(255, 0, 0)
    Drawing.new("Text").Visible = true
    Drawing.new("Text").Font = 2
    CrosshairConnection = v2121.RenderStepped:Connect(function()
        local v2221 = Vector2.new(vu2.ViewportSize.X / 2, vu2.ViewportSize.Y / 2)
        vu1 = v2221
        local v2221, v2222, v2223 = ipairs(vu3)
        for v2224, v2225 in v2221, v2222, v2223 do
            local v2226 = math.cos(vu4 + math.pi * 2 / vu5 * v2224 - 1)
            local v2227 = math.sin(vu4 + math.pi * 2 / vu5 * v2224 - 1)
            local v2228 = Vector2.new(vu1.X + v2226 * vu6, vu1.Y + v2227 * vu6)
            local v2229 = math.sin(vu4 + math.pi * 2 / vu5 * v2224 - 1)
            local v2230 = Vector2.new(vu1.X + math.cos(vu4 + math.pi * 2 / vu5 * v2224 - 1) * vu6 + vu7, vu1.Y + v2229 * vu6 + vu7)
            v2225.From = v2228
            v2225.To = v2230
        end
        vu8.Position = vu1
        vu9.Position = Vector2.new(vu1.X - 20, vu1.Y + 20)
        vu10.Position = Vector2.new(vu1.X + 35, vu1.Y + 20)
        vu4 = vu4 + 0.050000000000000003
    end)
    CrosshairObjects = {v2126, v2127, Drawing.new("Text")}
    local v2125, v2130, v2131 = ipairs(v2129)
    for v2132, v2133 in v2125, v2130, v2131 do
        table.insert(CrosshairObjects, v2133)
    end
end})
local v40 = v13:CreateToggle({Name = "Gun Mod OP", CurrentValue = false, Flag = "GunModToggle", Callback = function(p1)
    if p1 then
        local v2234 = getgenv()
        v2234.GunModEnabled = true
        local v2235 = Vector2.new(1/0, 1/0)
        getgenv().lt = {
            _ammo = 1/0,
            rateOfFire = 1/0,
            recoilAimReduction = v2235,
            recoilMax = Vector2.new(0, 0),
            recoilMin = Vector2.new(0, 0),
            spread = 0,
            reloadTime = 0,
            magazineSize = 1/0,
            damage = 1/0,
            equipTime = 0,
            eyeToSightDistance = 50,
            fireMode = "Auto",
            class = "Assault Rifle",
            movementSpeedFactor = 10,
            spreadADS = 0,
            supressionFactor = 1/0,
            timeToAim = 0,
            zoom = 10,
            isShotgun = false,
        }
        if not getgenv().GunModInitialized then
            game.Players.LocalPlayer.CharacterAdded:Connect(function(p1)
        local v2334 = getgenv()
        if not v2334.GunModEnabled then
            return
        end
        local v2335 = tick()
        if not nil then
            local v2336 = tick()
            if v2336 - v2335 < 10 then
                if not getgenv().GunModEnabled then
                    return
                end
                task.wait(0.10000000000000001)
            end
        end
        if p1:FindFirstChildWhichIsA("Tool") then
            if getgenv().GunModEnabled then
                local v2337 = getgenv()
                local v2336, v2337, v2338 = pairs(v2337.lt)
                for v2339, v2340 in v2336, v2337, v2338 do
                    pcall(function()
            vu1:SetAttribute(vu2, vu3)
        end)
                end
                vu1:Notify({Title = "Gun Mod Applied", Content = "Weapon attributes modified successfully!", Duration = 3, Image = -2147483648})
            end
        end
    end)
            if game.Players.LocalPlayer.Character then
                function(p1)
        local v2334 = getgenv()
        if not v2334.GunModEnabled then
            return
        end
        local v2335 = tick()
        if not nil then
            local v2336 = tick()
            if v2336 - v2335 < 10 then
                if not getgenv().GunModEnabled then
                    return
                end
                task.wait(0.10000000000000001)
            end
        end
        if p1:FindFirstChildWhichIsA("Tool") then
            if getgenv().GunModEnabled then
                local v2337 = getgenv()
                local v2336, v2337, v2338 = pairs(v2337.lt)
                for v2339, v2340 in v2336, v2337, v2338 do
                    pcall(function()
            vu1:SetAttribute(vu2, vu3)
        end)
                end
                vu1:Notify({Title = "Gun Mod Applied", Content = "Weapon attributes modified successfully!", Duration = 3, Image = -2147483648})
            end
        end
    end(game.Players.LocalPlayer.Character)
            end
            local v2236 = getgenv()
            v2236.GunModInitialized = true
        end
        vu1:Notify({Title = "Gun Mod Enabled", Content = "OP weapon modifications activated!", Duration = 3, Image = -2147483648})
    else
        getgenv().GunModEnabled = false
        if game.Players.LocalPlayer.Character then
            local v2237 = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
            if v2237 then
                local v2236, v2238, v2239 = pairs({
                    _ammo = 30,
                    rateOfFire = 600,
                    recoilAimReduction = Vector2.new(0.5, 0.5),
                    recoilMax = Vector2.new(2, 2),
                    recoilMin = Vector2.new(1, 1),
                    spread = 0.10000000000000001,
                    reloadTime = 2.5,
                    magazineSize = 30,
                    damage = 25,
                    equipTime = 0.5,
                    eyeToSightDistance = 0.5,
                    movementSpeedFactor = 0.80000000000000004,
                    spreadADS = 0.050000000000000003,
                    supressionFactor = 1,
                    timeToAim = 0.20000000000000001,
                    zoom = 1.5,
                })
                for v2240, v2241 in v2236, v2238, v2239 do
                    pcall(function()
        vu1:SetAttribute(vu2, vu3)
    end)
                end
            end
        end
        vu1:Notify({Title = "Gun Mod Disabled", Content = "Weapon attributes reset to normal", Duration = 3, Image = -2147483648})
    end
end})
local v41 = v9:CreateButton({Name = "Slient Aim", Callback = function()
    local v2342 = game:GetService("Players")
    local v2343 = game:GetService("ReplicatedStorage")
    local v2344 = game:GetService("UserInputService")
    local v2345 = game:GetService("RunService")
    local v2346 = v2343:WaitForChild("Events")
    local v2347 = Drawing.new("Circle")
    local v2348 = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    v2347.Position = v2348
    v2347.Radius = 120
    v2347.Filled = false
    v2347.Color = Color3.fromRGB(0, 255, 0)
    v2347.Visible = true
    v2347.Transparency = 0.5
    v2347.Thickness = 1
    v2347.NumSides = 64
    v2344.InputBegan:Connect(function(p1)
        if p1.UserInputType == Enum.UserInputType.MouseButton1 then
            vu1 = true
        end
    end)
    v2344.InputEnded:Connect(function(p1)
        if p1.UserInputType == Enum.UserInputType.MouseButton1 then
            vu1 = false
        end
    end)
    v2345.RenderStepped:Connect(function()
        if not vu1 then
            return
        end
        if not vu2.Character then
            return
        end
        local v2855 = vu2.Character:FindFirstChildOfClass("Tool")
        if not v2855 then
            return
        end
        local v2856 = vu3()
        local v2857, v2858, v2859 = ipairs(v2856)
        for v2860, v2861 in v2857, v2858, v2859 do
            local v2862 = CFrame.new(vu4.CFrame.Position, vu4.CFrame.Position + v2861.part.Position - vu4.CFrame.Position.Unit)
            local v2863 = os.clock()
            vu5:FireServer(v2855)
        end
    end)
    local v2349 = vu1:CreateSlider({
        Name = "Silent Aim FOV Size",
        Range = {10, 500},
        Increment = 5,
        Suffix = "Pixels",
        CurrentValue = 120,
        Flag = "SilentAimFOVSize",
        Callback = function(p1)
        vu1 = p1
        vu2.Radius = p1
    end,
    })
    local v2350 = vu1:CreateToggle({Name = "Show FOV Circle", CurrentValue = true, Flag = "ShowFOVCircle", Callback = function(p1)
        vu1.Visible = p1
    end})
    local v2351 = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize")
    v2351:Connect(function()
        local v3164 = Vector2.new(vu2.ViewportSize.X / 2, vu2.ViewportSize.Y / 2)
        vu1.Position = v3164
    end)
end})
local v42 = v9:CreateSection("Combat System")
local v43 = v9:CreateButton({Name = "Enable Hitbox System(wait 10s to load all players)", Callback = function()
    local v2452 = game:GetService("Players")
    local v2453 = game:GetService("RunService")
    local v2458 = v2453.Heartbeat:Connect(function()
        local v2967, v2968, v2969 = ipairs(vu1:GetPlayers())
        for v2970, v2971 in v2967, v2968, v2969 do
            if v2971 ~= vu2 then
                for v2970, v2971 in v2967, v2968, v2969 do
                    if v2971.Character then
                        for v2970, v2971 in v2967, v2968, v2969 do
                            local v2972, v2973, v2974 = pairs(vu3)
                            for v2975, v2976 in v2972, v2973, v2974 do
                                local v2977 = v2971.Character:FindFirstChild(v2975)
                                if v2977 then
                                    vu4(v2971, v2975, v2976)
                                    for v2975, v2976 in v2972, v2973, v2974 do
                                        if not vu5[v2971.Character] then
                                            for v2975, v2976 in v2972, v2973, v2974 do
                                                vu6(v2971)
                                            end
                                        end
                                    end
                                else
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    v2452.PlayerAdded:Connect(function(p1)
        if p1 ~= vu1 then
            task.wait(1)
            vu2(p1)
        end
    end)
    v2452.PlayerRemoving:Connect(function(p1)
        if p1 ~= vu1 then
            vu2(p1)
        end
    end)
    task.wait(3)
    local v2459, v2460, v2461 = ipairs(v2452:GetPlayers())
    for v2462, v2463 in v2459, v2460, v2461 do
        if v2463 ~= function(p1)
        if vu1[p1] then
            vu1[p1]:Disconnect()
            vu1[p1] = nil
        end
        if p1.Character then
            local v2861, v2862, v2863 = ipairs(vu2)
            for v2864, v2865 in v2861, v2862, v2863 do
                local v2866 = p1.Character:FindFirstChild(v2865)
                if v2866 then
                    for v2864, v2865 in v2861, v2862, v2863 do
                        vu3(v2866)
                    end
                end
            end
            vu4[p1.Character] = nil
        end
    end then
            for v2462, v2463 in v2459, v2460, v2461 do
                function(p1)
        if p1 == vu1 then
            return
        end
        if vu2[p1] then
            vu2[p1]:Disconnect()
            vu2[p1] = nil
        end
        local v2755 = p1.CharacterAdded:Connect(function(p1)
            vu1[p1] = nil
            local v2855 = os.clock()
            local v2856 = p1:FindFirstChild("Humanoid")
            if not v2856 then
                if os.clock() - v2855 < 10 then
                    vu2.Heartbeat:Wait()
                end
            end
            if p1:FindFirstChild("Humanoid") then
                if p1:WaitForChild("Head", 5) then
                    task.wait(0.5)
                    local v2857, v2858, v2859 = pairs(vu3)
                    for v2860, v2861 in v2857, v2858, v2859 do
                        vu4(vu5, v2860, v2861)
                    end
                    vu1[p1] = true
                end
            end
        end)
        vu2[vu6] = v2755
        if vu6.Character then
            if not vu3[vu6.Character] then
                if not vu6.Character:FindFirstChild("Humanoid") then
                    vu6.Character:WaitForChild("Humanoid", 5)
                end
                if vu6.Character:FindFirstChild("Humanoid") then
                    if vu6.Character:WaitForChild("Head", 5) then
                        task.wait(0.29999999999999999)
                        local v2756, v2757, v2758 = pairs(vu5)
                        for v2759, v2760 in v2756, v2757, v2758 do
                            vu6(vu6, v2759, v2760)
                        end
                        vu3[vu6.Character] = true
                    end
                end
            end
        end
    end(v2463)
            end
        end
    end
    task.delay(10, function()
        vu1()
    end)
    vu2:Notify({
        Title = "Hitbox System Enabled",
        Content = "Head hitbox system has been activated!",
        Duration = 3,
        Image = -2147483648,
        Actions = {{Title = "OK", Callback = function() end}},
    })
end})
local v44 = v9:CreateSection("Premium Auto Kill (Set Fly Speed 55 to auto kill)")
local v45 = v9:CreateToggle({Name = "Auto Kill", CurrentValue = false, Flag = "ProAutoKillToggle", Callback = function(p1)
    if p1 then
        pcall(function()
        local v2664 = game:GetService("VirtualUser")
        task.spawn(function()
            local v2764 = task.wait(0.10000000000000001)
            if v2764 then
                local v2765 = Vector2.new(0, 0)
                vu1:Button1Down(v2765, workspace.CurrentCamera.CFrame)
                task.wait(0.050000000000000003)
                vu1:Button1Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        end)
        local v2665 = game:GetService("Players")
        local v2666 = game:GetService("ReplicatedStorage")
        local v2667 = game:GetService("RunService")
        local v2668 = game:GetService("UserInputService")
        local v2669 = v2666:WaitForChild("Events")
        _G.ProAutoKill = {
            Enabled = true,
            TeamCheck = true,
            KillRange = 1000,
            KillCooldown = 0.5,
            TeleportToTarget = true,
            FlyHeight = 10,
            FlySpeed = 25,
            AimLock = true,
            AutoShoot = true,
            NoClip = true,
            CurrentTarget = nil,
            LastKillTime = 0,
            MouseDown = false,
            Connections = {},
            NoClipParts = {},
        }
        local v2670 = v2667.Heartbeat:Connect(function()
            pcall(vu1)
        end)
        table.insert(_G.ProAutoKill.Connections, v2670)
        local v2671, v2672, v2673 = ipairs(v2665:GetPlayers())
        for v2674, v2675 in v2671, v2672, v2673 do
            if v2675 ~= v2665.LocalPlayer then
                for v2674, v2675 in v2671, v2672, v2673 do
                    function(p1)
            if p1.Character then
                local v4105 = p1.Character:FindFirstChild("Humanoid")
                if v4105 then
                    local v4106 = v4105.Died:Connect(function()
                if _G.ProAutoKill then
                    if _G.ProAutoKill.CurrentTarget == vu1 then
                        _G.ProAutoKill.CurrentTarget = nil
                    end
                end
            end)
                    table.insert(_G.ProAutoKill.Connections, v4106)
                end
            end
        end(v2675)
                end
            end
        end
        table.insert(_G.ProAutoKill.Connections, v2665.PlayerAdded:Connect(function(p1)
            vu1(p1)
        end))
        vu1:Notify({Title = "Premium Auto Kill Enabled", Content = "Flying with NoClip + Aimlock + Auto Shoot activated!", Duration = 4, Image = -2147483648})
    end)
    else
        pcall(function()
        if _G.ProAutoKill then
            _G.ProAutoKill.Enabled = false
            disableNoClip()
            if LocalPlayer.Character then
                local v2776 = LocalPlayer.Character:FindFirstChild("Humanoid")
                if v2776 then
                    LocalPlayer.Character.Humanoid.PlatformStand = false
                end
            end
            if LocalPlayer.Character then
                if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local v2777, v2778, v2779 = ipairs(LocalPlayer.Character.HumanoidRootPart:GetChildren())
                    for v2780, v2781 in v2777, v2778, v2779 do
                        local v2782 = v2781:IsA("BodyVelocity")
                        if not v2782 then
                            if v2781:IsA("BodyGyro") then
                                for v2780, v2781 in v2777, v2778, v2779 do
                                    v2781:Destroy()
                                end
                            end
                        else
                        end
                    end
                end
            end
            local v2776, v2777, v2778 = ipairs(_G.ProAutoKill.Connections)
            for v2779, v2780 in v2776, v2777, v2778 do
                pcall(function()
            vu1:Disconnect()
        end)
            end
            if _G.ProAutoKill.MouseDown then
                simulateMouseUp()
            end
            _G.ProAutoKill = nil
        end
        vu1:Notify({Title = "Premium Auto Kill Disabled", Content = "Flying + NoClip + Aimlock + Auto Shoot deactivated!", Duration = 3, Image = -2147483648})
    end)
    end
end})
local v46 = v9:CreateToggle({Name = "Team Check", CurrentValue = true, Flag = "ProTeamCheck", Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.TeamCheck = p1
        _G.ProAutoKill.CurrentTarget = nil
    end
end})
local v47 = v9:CreateSlider({
    Name = "Kill Range",
    Range = {50, 2000},
    Increment = 50,
    Suffix = "Studs",
    CurrentValue = 1000,
    Flag = "ProKillRange",
    Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.KillRange = p1
    end
end,
})
local v48 = v9:CreateSlider({
    Name = "Fly Height",
    Range = {5, 50},
    Increment = 1,
    Suffix = "Studs",
    CurrentValue = 10,
    Flag = "ProFlyHeight",
    Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.FlyHeight = p1
    end
end,
})
local v49 = v9:CreateSlider({
    Name = "Fly Speed",
    Range = {10, 100},
    Increment = 5,
    Suffix = "Speed",
    CurrentValue = 25,
    Flag = "ProFlySpeed",
    Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.FlySpeed = p1
    end
end,
})
local v50 = v9:CreateSlider({
    Name = "Fire Rate",
    Range = {0.10000000000000001, 2},
    Increment = 0.10000000000000001,
    Suffix = "Seconds",
    CurrentValue = 0.5,
    Flag = "ProFireRate",
    Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.KillCooldown = p1
    end
end,
})
local v51 = v9:CreateToggle({Name = "Fly To Target", CurrentValue = true, Flag = "ProFlyToggle", Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.TeleportToTarget = p1
    end
end})
local v52 = v9:CreateToggle({Name = "NoClip", CurrentValue = true, Flag = "ProNoClipToggle", Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.NoClip = p1
        if p1 then
            enableNoClip()
        else
            disableNoClip()
        end
    end
end})
local v53 = v9:CreateToggle({Name = "Aim Lock", CurrentValue = true, Flag = "ProAimLockToggle", Callback = function(p1)
    if _G.ProAutoKill then
        _G.ProAutoKill.AimLock = p1
    end
end})
local v54 = v9:CreateButton({Name = "Refresh Targets", Callback = function()
    if _G.ProAutoKill then
        _G.ProAutoKill.CurrentTarget = nil
        _G.ProAutoKill.LastKillTime = 0
        vu1:Notify({Title = "Targets Refreshed", Content = "Searching for new targets...", Duration = 2, Image = -2147483648})
    end
end})
