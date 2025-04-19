local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("онал артама", "RJTheme2")

local Tab = Window:NewTab("Дефалт функции")

local Section = Tab:NewSection("кнопка")

Section:NewButton("флуай(ни работат пака чта)", "ButtonInfo", function()
    print("КИрил гей ебаный")
end)

Section:NewSlider("скорааст", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("ПРыжак", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
end)

Section:NewTextBox("Скорасть номер 2", "TextboxInfo", function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Еспы", "ButtonInfo", function()
    while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 6, 3)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(255,170,255)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)
