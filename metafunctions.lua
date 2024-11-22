Format = {}
State = {}
Tool = {}
Roblox = {}
Gui = {}

Format.__index = Format
State.__index = State
Tool.__index = Tool
Roblox.__index = Roblox
Gui.__index = Gui

function pcallCheck(func)
    local success, err = pcall(func)
    return success
end

Format:Position = function(arg)
  if type(arg) == "BasePart" then
    return arg.Position
  elseif type(arg) == "Vector3" or type(arg) == "CFrame" then
    return arg.Position or arg
  elseif type(arg) == "Model" then
    return arg.PrimaryPart and arg.PrimaryPart.Position
  end
  return Vector3.new(0, 0, 0)
end

Format:TextColor = function(t, c)
  return string.format("<font color=\"%s\">%s</font>", c, tostring(t))
end

Format:FormatNumber = function(n, suffixes)
  suffixes = suffixes or {"K", "M", "B", "T"}
  local number = math.abs(n)
  for i, suffix in ipairs(suffixes) do
    if number >= 1000 then
      number = number / 1000
    else
      return string.format("%s%s", math.floor(number), suffix)
    end
  end
  return tostring(math.floor(number))
end

Format:Price = function(Money, Frags)
  local result = ""
  
  if Money and Money > 0 then
    result = self:TextColor("$" .. self:FormatNumber(Money), "rgb(0,255,0)")
  end
  
  if Frags and Frags > 0 then
    if result ~= "" then
      result = result .. " e "
    end
    result = result .. self:TextColor(self:FormatNumber(Frags) .. " Frags", "rgb(128,0,128)")
  end
  
  return result
end

Get:Distance = function(a, b)
  return (Format:Position(a) - Format:Position(b)).Magnitude
end

State:Humanoid = function(s)
  local character = Player.Character
  local humanoid = character and character:FindFirstChildOfClass("Humanoid")
  return humanoid and humanoid:GetState() == Enum.HumanoidStateType[s] or false
end

State:NetworkOwner = function(a)
  if not a:IsA("BasePart") then return false end
  local character = Player.Character
  local hrp = character and character:FindFirstChild("HumanoidRootPart")
  return (hrp and self:Distance(hrp, a) <= 350) or false
end

Tool:Equip = function(t)
    return pcallCheck(function()
        local tool = Player.Backpack:FindFirstChild(t)
        local character = Player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if tool and humanoid then
            humanoid:EquipTool(tool)
        end
    end)
end

Tool:Unequip = function(t)
  return pcallCheck(function()
        local character = Player.Character
        local tool = character and character:FindFirstChild(t)
        if tool then
            tool.Parent = Player.Backpack
        end
    end)
end

Roblox:Rejoin = function()
    return pcallCheck(function()
        TeleportService:Teleport(game.PlaceId, Player)
    end)
end

Gui:Visible = function(Gui)
  Gui.Visible = true 
end

Gui:Toggle = function(Gui)
  Gui.Visible = not Gui.Visible
end

Gui:Hide = function(Gui)
  Gui.Visible = false
end
