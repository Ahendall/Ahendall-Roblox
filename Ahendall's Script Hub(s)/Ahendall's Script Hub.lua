local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()

local A = Library:AddGui({
	Title = {"Ahendall", "Script Hub"},
	ThemeColor = Color3.fromRGB(0, 255, 0),
	ToggleKey = Enum.KeyCode.RightShift,
})

local simple = A:AddTab("Simple Scripts")
local guis = A:AddTab("Scripts & GUIs")
local dev = A:AddTab("Dev Tools")
local misc = A:AddTab("Misc")
local cred = A:AddTab("Credits")

--------------------
-- SIMPLE SCRIPTS --
--------------------
local quick = simple:AddCategory("Quick Scripts")
local vals = simple:AddCategory("Value Changers")
