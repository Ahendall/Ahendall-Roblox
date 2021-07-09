--[[


░█████╗░██╗░░██╗███████╗███╗░░██╗██████╗░░█████╗░██╗░░░░░██╗░░░░░██╗░██████╗
██╔══██╗██║░░██║██╔════╝████╗░██║██╔══██╗██╔══██╗██║░░░░░██║░░░░░╚█║██╔════╝
███████║███████║█████╗░░██╔██╗██║██║░░██║███████║██║░░░░░██║░░░░░░╚╝╚█████╗░
██╔══██║██╔══██║██╔══╝░░██║╚████║██║░░██║██╔══██║██║░░░░░██║░░░░░░░░░╚═══██╗
██║░░██║██║░░██║███████╗██║░╚███║██████╔╝██║░░██║███████╗███████╗░░░██████╔╝
╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝╚═════╝░╚═╝░░╚═╝╚══════╝╚══════╝░░░╚═════╝░

░██████╗░█████╗░██████╗░██╗██████╗░████████╗░░░░░░██╗░░██╗██╗░░░██╗██████╗░
██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝░░░░░░██║░░██║██║░░░██║██╔══██╗
╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░█████╗███████║██║░░░██║██████╦╝
░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░╚════╝██╔══██║██║░░░██║██╔══██╗
██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░░░░░░░██║░░██║╚██████╔╝██████╦╝
╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░░░░░░░╚═╝░░╚═╝░╚═════╝░╚═════╝░

]]--


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()
local A = Library:AddGui({
	Title = {"Ahendall", "Script Hub"},
	ThemeColor = Color3.fromRGB(0, 255, 0),
	ToggleKey = Enum.KeyCode.RightShift,
})

-------------------
-- Creating Tabs --
-------------------
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

-- Quick Scripts

local ShiftToSprint = quick:AddButton("Shift to Sprint", function()
    repeat wait() until game:GetService("Players").LocalPlayer.CharacterAdded
    local plr = game:GetService("Players").LocalPlayer
    local hum = plr.Character:FindFirstChild("Humanoid")
    local m = plr:GetMouse()

    m.KeyDown:Connect(function(key)
        if key == "0" then
            hum.WalkSpeed = 150
        end
    end)

    m.KeyUp:Connect(function(key)
        if key == "0" then
            hum.WalkSpeed = 16
        end
    end)
end)


local InfJump = quick:AddButton("Infinite Jump", function()
	local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    local jp = tonumber(Player.Character:FindFirstChild("Humanoid").JumpPower)

    _G.JumpHeight = jp + 10; --will be the same as your standard jump height

    function Action(Object, Function) if Object ~= nil then Function(Object); end end

    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
end)


local QTeleport = quick:AddButton("Q to Teleport", function()
    local plr = game:GetService("Players").LocalPlayer
    local hum = plr.Character:FindFirstChild("HumanoidRootPart")
    local mouse = plr:GetMouse()
    
    mouse.KeyDown:connect(function(key) -- Detecting if there is a key being pressed
        if key == "q" then -- Checking if the key is Q
             if mouse.Target then -- checking if mouse.Target exists
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) -- Actually moving your character
            end
        end 
    end)
end)


local Btools = quick:AddButton("BTools", function()
    local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    tool1.BinType = "Clone"
    tool2.BinType = "GameTool"
    tool3.BinType = "Hammer"
    tool4.BinType = "Script"
    tool5.BinType = "Grab"
end)


local Suicide = quick:AddButton("Reset Character", function()
    game:GetService("Players").LocalPlayer.Character:Destroy()
end)

-- Value Changers
