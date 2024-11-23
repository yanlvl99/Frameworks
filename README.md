# Yan's Framework v0.1

Uma biblioteca utilitária privada para Roblox com funções para manipulação de posições, formatação de texto e números, gerenciamento de ferramentas e muito mais.

⚠️ **AVISO: Este é um framework privado de uso restrito. Distribuição e uso não autorizado são estritamente proibidos.**

## 📥 Instalação

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/yanlvl99/Frameworks/refs/heads/main/base.lua"))()
local framework = Framework.new()
```

## 🚀 Funcionalidades

### Position
Obtém a posição Vector3 de diferentes tipos de objetos.

```lua
-- Com BasePart
local part = workspace.Part
local position = framework:Position(part) -- Retorna Vector3

-- Com Vector3
local vec = Vector3.new(0, 10, 0)
local position = framework:Position(vec) -- Retorna Vector3

-- Com CFrame
local cf = CFrame.new(0, 10, 0)
local position = framework:Position(cf) -- Retorna Vector3

-- Com Model
local model = workspace.Model
local position = framework:Position(model) -- Retorna Vector3 do PrimaryPart
```

### TextColor
Adiciona cor ao texto.

```lua
local coloredText = framework:TextColor("Olá Mundo", "rgb(255,0,0)")
```

### FormatNumber
Formata números grandes com sufixos.

```lua
local formatted = framework:FormatNumber(1500) -- Resultado: "1.5K"
local formatted = framework:FormatNumber(1500000) -- Resultado: "1.5M"

-- Com sufixos personalizados
local sufixos = {"Mil", "Mi", "Bi", "Tri"}
local formatted = framework:FormatNumber(1500, sufixos) -- Resultado: "1.5Mil"
```

### Price
Formata preços com múltiplas moedas.

```lua
local preco = framework:Price({
    currencies = {
        {amount = 1500, symbol = "$", color = "rgb(255,215,0)"},
        {amount = 750, symbol = "💎", color = "rgb(0,191,255)"}
    },
    separator = " + "
})
-- Resultado: <font color="rgb(255,215,0)">$1.5K</font> + <font color="rgb(0,191,255)">💎750</font>
```

### Distance
Calcula a distância entre duas posições.

```lua
local part1 = workspace.Part1
local part2 = workspace.Part2
local distancia = framework:Distance(part1, part2) -- Retorna número
```

### Humanoid
Verifica o estado do Humanoid do jogador.

```lua
local estaAndando = framework:Humanoid("Walking") -- Retorna boolean
local estaPulando = framework:Humanoid("Jumping") -- Retorna boolean
```

### NetworkOwner
Verifica se um objeto está dentro do alcance de network do jogador.

```lua
local part = workspace.Part
local temControle = framework:NetworkOwner(part) -- Retorna boolean
```

### EquipTool e UnequipTool
Gerencia ferramentas no inventário.

```lua
-- Equipar ferramenta
framework:EquipTool("Espada") -- Retorna funçao 

-- Desequipar ferramenta
framework:UnequipTool("Espada") -- Retorna funçao
```

### Rejoin
Reconecta o jogador ao servidor.

```lua
framework:Rejoin() -- Retorna funçao de relogar
```

### CreateWindow
Cria uma janela de interface usando a biblioteca Fluent.

```lua
local window = framework:CreateWindow("Meu Jogo", Enum.KeyCode.LeftAlt)
```

## ⚖️ Propriedade e Direitos Autorais

Copyright © 2024 Yan. Todos os direitos reservados.

**AVISO DE USO RESTRITO**
- Este framework é propriedade exclusiva de Yan
- Uso e distribuição são permitidos apenas mediante autorização expressa do proprietário
- A cópia, modificação ou distribuição não autorizada é estritamente proibida
- O acesso ao código fonte não implica em direito de uso ou distribuição

Desenvolvido com amor e carinho por Yan

Para solicitar acesso ou tirar dúvidas, entre em contato com o proprietário.
