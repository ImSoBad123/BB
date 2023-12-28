local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Auto Collect", HidePremium = false, SaveConfig = true, ConfigFolder = "111"})

local Tab1 = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab1:AddButton({
	Name = "Button!",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ImSoBad123/BB/main/Js.lua"))()
  	end    
})

Tab1:AddToggle({
	Name = "bật cái này đi",
	Default = false,
    Save = true,
    Flag = "Collect",
	Callback = function(Value)
		_G.Collect = Value
	end    
})

spawn(function()
    pcall(function()
        while task.wait() do
            pcall(function()
                if _G.Collect then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ImSoBad123/BB/main/Js.lua"))()
                end
            end)
        end
    end)
end)

OrionLib:Init()
