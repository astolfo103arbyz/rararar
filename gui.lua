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
end)

Section:NewTextBox("Скорасть номер 2", "TextboxInfo", function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
