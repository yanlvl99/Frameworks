<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yan's Framework</title>
</head>
<body>
    <h1>Yan's Framework</h1>
    <p>Versão: <strong>v0.1</strong></p>

    <h2>Introdução</h2>
    <p>Este framework fornece várias funções utilitárias para facilitar o desenvolvimento de scripts no Roblox. Abaixo estão exemplos de como usar cada função do framework.</p>

    <h2>Exemplos de Uso</h2>

    <h3>Função: Position</h3>
    <pre><code>
local position = framework:Position(someInstance)
print(position)
    </code></pre>

    <h3>Função: TextColor</h3>
    <pre><code>
local coloredText = framework:TextColor("Hello, World!", "rgb(255,0,0)")
print(coloredText)
    </code></pre>

    <h3>Função: FormatNumber</h3>
    <pre><code>
local formattedNumber = framework:FormatNumber(1234567)
print(formattedNumber)
    </code></pre>

    <h3>Função: Price</h3>
    <pre><code>
local priceOptions = {
    currencies = {
        {amount = 1000, symbol = "$", color = "rgb(0,255,0)"},
        {amount = 500, symbol = " Frags", color = "rgb(128,0,128)"},
        {amount = 300, symbol = " Gems", color = "rgb(0,0,255)"}
    },
    separator = " e "
}
local formattedPrice = framework:Price(priceOptions)
print(formattedPrice)
    </code></pre>

    <h3>Função: Distance</h3>
    <pre><code>
local distance = framework:Distance(instanceA, instanceB)
print(distance)
    </code></pre>

    <h3>Função: Humanoid</h3>
    <pre><code>
local isHumanoid = framework:Humanoid("Running")
print(isHumanoid)
    </code></pre>

    <h3>Função: NetworkOwner</h3>
    <pre><code>
local isNetworkOwner = framework:NetworkOwner(someInstance)
print(isNetworkOwner)
    </code></pre>

    <h3>Função: EquipTool</h3>
    <pre><code>
local success = framework:EquipTool("ToolName")
print(success)
    </code></pre>

    <h3>Função: UnequipTool</h3>
    <pre><code>
local success = framework:UnequipTool("ToolName")
print(success)
    </code></pre>

    <h3>Função: Rejoin</h3>
    <pre><code>
local success = framework:Rejoin()
print(success)
    </code></pre>

    <h3>Função: CreateWindow</h3>
    <pre><code>
local window = framework:CreateWindow("Game Name", Enum.KeyCode.LeftAlt)
print(window)
    </code></pre>

    <h2>Versão</h2>
    <pre><code>
Framework.Version:print()
    </code></pre>
</body>
</html>
