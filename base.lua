-- Definindo as tabelas e suas metatables
Format = {}
State = {}
Tool = {}
Roblox = {}
Gui = {}
LibraryManager = {}

Format.__index = Format
State.__index = State
Tool.__index = Tool
LibraryManager.__index = LibraryManager
Roblox.__index = Roblox
Gui.__index = Gui

function pcallCheck(func)
    local success, err = pcall(func)
    return success
end

function Format:Position(arg)
    if typeof(arg) == "Instance" and arg:IsA("BasePart") then
        return arg.Position
    elseif typeof(arg) == "Vector3" or typeof(arg) == "CFrame" then
        return arg.Position or arg
    elseif typeof(arg) == "Instance" and arg:IsA("Model") then
        return arg.PrimaryPart and arg.PrimaryPart.Position
    end
    return Vector3.new(0, 0, 0)
end

function Format:TextColor(t, c)
    return string.format("<font color=\"%s\">%s</font>", c, tostring(t))
end

function Format:FormatNumber(n, suffixes)
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

function Format:Price(options)
    local result = ""
    local currencies = options.currencies or {}
    local separator = options.separator or " e "

    for _, currency in ipairs(currencies) do
        local amount = currency.amount
        local symbol = currency.symbol or ""
        local color = currency.color or "rgb(255,255,255)"
        local formattedAmount = self:FormatNumber(amount)

        if amount and amount > 0 then
            if result ~= "" then
                result = result .. separator
            end
            result = result .. self:TextColor(symbol .. formattedAmount, color)
        end
    end

    return result
end

-- Exemplo de uso:
local priceOptions = {
    currencies = {
        {amount = 1000, symbol = "$", color = "rgb(0,255,0)"},
        {amount = 500, symbol = " Frags", color = "rgb(128,0,128)"},
        {amount = 300, symbol = " Gems", color = "rgb(0,0,255)"}
    },
    separator = " e "
}

function Get:Distance(a, b)
    return (Format:Position(a) - Format:Position(b)).Magnitude
end

function State:Humanoid(s)
    local character = Player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    return humanoid and humanoid:GetState() == Enum.HumanoidStateType[s] or false
end

function State:NetworkOwner(a)
    if not a:IsA("BasePart") then return false end
    local character = Player.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    return (hrp and self:Distance(hrp, a) <= 350) or false
end

-- Funções da tabela Tool
function Tool:Equip(t)
    return pcallCheck(function()
        local tool = Player.Backpack:FindFirstChild(t)
        local character = Player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if tool and humanoid then
            humanoid:EquipTool(tool)
        end
    end)
end

function Tool:Unequip(t)
    return pcallCheck(function()
        local character = Player.Character
        local tool = character and character:FindFirstChild(t)
        if tool then
            tool.Parent = Player.Backpack
        end
    end)
end

-- Função da tabela Roblox
function Roblox:Rejoin()
    return pcallCheck(function()
        TeleportService:Teleport(game.PlaceId, Player)
    end)
end

function LibraryManager.new()
    local self = setmetatable({}, LibraryManager)
    self.Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    return self
end

function LibraryManager:CreateWindow(gameName,keyBind)
    local window = self.Library:CreateWindow({
      Title = "Yan's Hub",
      SubTitle = gameName or "",
      TabWidth = 112,
      Size = UDim2.fromOffset(406, 322),
      Theme = "Darker",
      MinimizeKey = keyBind or Enum.KeyCode.LeftAlt
    })
    self.Library:ToggleTransparency(false)
    return window
end

library = LibraryManager.new()

