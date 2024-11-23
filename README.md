# Yan's Framework v0.1

Uma biblioteca utilitária privada para Roblox com funções para manipulação de posições, formatação de texto e números, gerenciamento de ferramentas e muito mais.

⚠️ **AVISO: Este é um framework privado de uso restrito. Distribuição e uso não autorizado são estritamente proibidos.**

## 📥 Instalação

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/yanlvl99/Frameworks/refs/heads/main/base.lua"))()
local Framework = Framework.new()
```

## 🚀 Funcionalidades

### Flexibilidade e Facilidade
Você pode facilmente adicionar mais funções ao Framework, e tambem utilizar funções ja existentes nessa função 

```lua
-- Criando nova função 
function Framework:Printar(texto)
    print(texto)
end

-- Criando função nova e utilizando função já criada
function Framework:PrintarNumeroFormatado(numero)
    print(self:FormatNumber(numero))
end
```

### Position
Obtém a posição Vector3 de diferentes tipos de objetos.

```lua
-- Com BasePart
local part = workspace.Part
local position = Framework:Position(part) -- Retorna Vector3

-- Com Vector3
local vec = Vector3.new(0, 10, 0)
local position = Framework:Position(vec) -- Retorna Vector3

-- Com CFrame
local cf = CFrame.new(0, 10, 0)
local position = Framework:Position(cf) -- Retorna Vector3

-- Com Model
local model = workspace.Model
local position = Framework:Position(model) -- Retorna Vector3 do PrimaryPart
```

### TextColor
Adiciona cor ao texto.

```lua
local coloredText = Framework:TextColor("Olá Mundo", "rgb(255,0,0)")
```

### FormatNumber
Formata números grandes com sufixos.

```lua
local formatted = Framework:FormatNumber(1500) -- Resultado: "1.5K"
local formatted = Framework:FormatNumber(1500000) -- Resultado: "1.5M"

-- Com sufixos personalizados
local sufixos = {"Mil", "Mi", "Bi", "Tri"}
local formatted = Framework:FormatNumber(1500, sufixos) -- Resultado: "1.5Mil"
```

### Price
Formata preços com múltiplas moedas.

```lua
local preco = Framework:Price({
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
local distancia = Framework:Distance(part1, part2) -- Retorna número
```

### Humanoid
Verifica o estado do Humanoid do jogador.

```lua
local estaAndando = Framework:Humanoid("Walking") -- Retorna boolean
local estaPulando = Framework:Humanoid("Jumping") -- Retorna boolean
```

### NetworkOwner
Verifica se um objeto está dentro do alcance de network do jogador.

```lua
local part = workspace.Part
local temControle = Framework:NetworkOwner(part) -- Retorna boolean
```

### EquipTool e UnequipTool
Gerencia ferramentas no inventário.

```lua
-- Equipar ferramenta
Framework:EquipTool("Espada") -- Retorna funçao 

-- Desequipar ferramenta
Framework:UnequipTool("Espada") -- Retorna funçao
```

### Rejoin
Reconecta o jogador ao servidor.

```lua
Framework:Rejoin() -- Retorna funçao de relogar
```

### CreateWindow
Cria uma janela de interface usando a biblioteca Fluent.

```lua
local window = Framework:CreateWindow("Meu Jogo", Enum.KeyCode.LeftAlt)
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
