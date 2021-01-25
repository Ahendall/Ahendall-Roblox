repeat wait() until game:GetService("Players").LocalPlayer

local plr = game:GetService("Players").LocalPlayer
local hum = plr.Character:FindFirstChild("Humanoid")
local m = plr:GetMouse

m.KeyDown:Connect(function(key)
  if key == "0"
    hum.WalkSpeed = 150
  end
end

m.KeyUp:Connect(function(key)
  if key == "0"
    hum.WalkSpeed = 16
  end
end
