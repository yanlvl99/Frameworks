# Yan's Hub Framework v0.2
Uma biblioteca de utilitários para Roblox que oferece diversas funções auxiliares para desenvolvimento de scripts.

## 📥 Instalação
```lua
loadstring(game:HttpGet("[URL_DO_SEU_RAW_GITHUB](https://raw.githubusercontent.com/yanlvl99/Frameworks/refs/heads/main/base.lua)"))()
local Framework = Framework.new()
```

## ⚙️ Funcionalidades Principais

### Position(arg)
Obtém a posição Vector3 de diferentes tipos de objetos.
```lua
local position = Framework:Position(part) -- Retorna Vector3
```
Suporta:
- BasePart
- Model
- Attachment
- Humanoid
- Vector3
- CFrame
- UDim2
- Tables com propriedade Position

### TextColor(text, color)
Aplica cor ao texto usando formatação HTML.
```lua
local coloredText = Framework:TextColor("Texto", Color3.fromRGB(255, 0, 0))
```

### FormatNumber(number)
Formata números grandes com sufixos (K, M, B, T).
```lua
local formatted = Framework:FormatNumber(1500) -- Retorna "1.5K"
```

### Simulação de Input
#### SimulateKeyPress(key, releaseTime)
```lua
Framework:SimulateKeyPress(Enum.KeyCode.Space, 0.1)
```

#### SimulateMouseClick(button)
```lua
Framework:SimulateMouseClick("Left") -- ou "Right"
```

#### SimulateMouseScroll(direction, amount)
```lua
Framework:SimulateMouseScroll("Up", 1) -- ou "Down"
```

### ContainsValue(table, ...)
Verifica se uma tabela contém determinados valores.
```lua
local contains = Framework:ContainsValue({1, 2, 3}, 2, 4) -- Retorna true se encontrar qualquer valor
```

### FindMatchingItems(parents, returnItems, ...)
Procura por itens que correspondam a palavras-chave específicas.
```lua
local items = Framework:FindMatchingItems(workspace, true, "keyword")
```

### Teleport(config)
Teleporta ou faz tween de um personagem para uma posição.
```lua
Framework:Teleport({
    targetPos = Vector3.new(0, 0, 0),
    RootPart = character.HumanoidRootPart,
    Tween = true,
    Speed = 300,
    MaxSpeed = 500,
    MinSpeed = 1,
    BypassDistance = 1,
    NeedHumanoid = true,
    HasBodyVelocity = true
})
```

### Price(options)
Formata preços com diferentes moedas e cores.
```lua
local price = Framework:Price({
    currencies = {
        {amount = 1500, symbol = "$", color = "rgb(255,255,0)"},
        {amount = 2000, symbol = "€", color = "rgb(0,255,0)"}
    },
    separator = " e "
})
```

### Distance(a, b)
Calcula a distância entre dois objetos/posições.
```lua
local distance = Framework:Distance(part1, part2)
```

### Humanoid(state)
Verifica o estado atual do Humanoid do jogador.
```lua
local isJumping = Framework:Humanoid("Jumping")
```

### NetworkOwner(part)
Verifica se um BasePart está dentro do alcance de network do jogador.
```lua
local hasNetworkOwnership = Framework:NetworkOwner(part)
```

### Equipamento de Ferramentas
```lua
Framework:EquipTool("ToolName")   -- Equipa uma ferramenta
Framework:UnequipTool("ToolName") -- Desequipa uma ferramenta
```

### Rejoin()
Reconecta o jogador ao servidor.
```lua
Framework:Rejoin()
```

### Interface Gráfica
```lua
local window = Framework:CreateWindow("Nome do Jogo", Enum.KeyCode.LeftAlt)
```

## 🎨 Interface
O Framework utiliza a biblioteca Fluent UI para criar interfaces gráficas modernas e responsivas.

## ⚠️ Observações
- Reporte bugs ou problemas na aba Issues

## ⚖️ Propriedade e Direitos Autorais

Copyright © 2024 Yan. Todos os direitos reservados.

**AVISO DE USO RESTRITO**
- Este framework é propriedade exclusiva de Yan
- Uso e distribuição são permitidos apenas mediante autorização expressa do proprietário
- A cópia, modificação ou distribuição não autorizada é estritamente proibida
- O acesso ao código fonte não implica em direito de uso ou distribuição

Desenvolvido com amor e carinho por Yan

Para solicitar acesso ou tirar dúvidas, entre em contato com o proprietário.
