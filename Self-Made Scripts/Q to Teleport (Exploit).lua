local plr = game:GetService("Players").LocalPlayer
local hum = plr.Character:FindFirstChild("HumanoidRootPart")
local mouse = plr:GetMouse()

mouse.KeyDown:connect(function(key)
    if key == "q" then
         if mouse.Target then
            hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
        end
    end 
end)
