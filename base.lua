-- Definindo a tabela principal e sua metatable
Framework = {}
Framework.__index = Framework

-- Tipagem para as funções
type PositionArg = Instance | Vector3 | CFrame | Model
type Currency = {amount: number, symbol: string, color: string}
type PriceOptions = {currencies: {Currency}, separator: string}

-- Função para verificar pcall
local function pcallCheck(func: () -> any): boolean
    local success, err = pcall(func)
    return success
end

-- Funções da tabela Framework
function Framework:Position(arg: PositionArg): Vector3
    if typeof(arg) == "Instance" and arg:IsA("BasePart") then
        return arg.Position
    elseif typeof(arg) == "Vector3" or typeof(arg) == "CFrame" then
        return arg.Position or arg
    elseif typeof(arg) == "Instance" and arg:IsA("Model") then
        return arg.PrimaryPart and arg.PrimaryPart.Position
    end
    return Vector3.new(0, 0, 0)
end

function Framework:TextColor(t: string, c: string): string
    return string.format("<font color=\"%s\">%s</font>", c, tostring(t))
end

function Framework:FormatNumber(n: number, suffixes: {string}?): string
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

function Framework:Price(options: PriceOptions): string
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

function Framework:Distance(a: PositionArg, b: PositionArg): number
    return (self:Position(a) - self:Position(b)).Magnitude
end

function Framework:Humanoid(s: string): boolean
    local character = Player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    return humanoid and humanoid:GetState() == Enum.HumanoidStateType[s] or false
end

function Framework:NetworkOwner(a: Instance): boolean
    if not a:IsA("BasePart") then return false end
    local character = Player.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    return (hrp and self:Distance(hrp, a) <= 350) or false
end

function Framework:EquipTool(t: string): boolean
    return pcallCheck(function()
        local tool = Player.Backpack:FindFirstChild(t)
        local character = Player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if tool and humanoid then
            humanoid:EquipTool(tool)
        end
    end)
end

function Framework:UnequipTool(t: string): boolean
    return pcallCheck(function()
        local character = Player.Character
        local tool = character and character:FindFirstChild(t)
        if tool then
            tool.Parent = Player.Backpack
        end
    end)
end

function Framework:Rejoin(): boolean
    return pcallCheck(function()
        TeleportService:Teleport(game.PlaceId, Player)
    end)
end

function Framework:CreateWindow(gameName: string?, keyBind: Enum.KeyCode?): Instance
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

function Framework.new(): Framework
    local self = setmetatable({}, Framework)
    self.Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    return self
end
