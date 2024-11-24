---

Yan's Framework v0.1

Uma biblioteca utilitária privada para Roblox, projetada para facilitar o desenvolvimento de jogos com funções para manipulação de posições, formatação de texto e números, gerenciamento de ferramentas, e muito mais.

⚠️ AVISO: Este é um framework privado de uso restrito. Distribuição ou uso não autorizado são terminantemente proibidos.


---

📥 Instalação

loadstring(game:HttpGet("https://raw.githubusercontent.com/yanlvl99/Frameworks/refs/heads/main/base.lua"))()
local Framework = Framework.new()


---

🚀 Funcionalidades

Flexibilidade e Expansibilidade

Adicione facilmente novas funcionalidades ao framework ou reutilize as existentes.

-- Criando uma nova função
function Framework:Printar(texto)
    print(texto)
end

-- Criando uma nova função utilizando outra função do Framework
function Framework:PrintarNumeroFormatado(numero)
    print(self:FormatNumber(numero))
end

📍 Position

Obtenha a posição de diferentes tipos de objetos no formato Vector3.

local part = workspace.Part
local position = Framework:Position(part) -- Retorna Vector3

local vec = Vector3.new(0, 10, 0)
local position = Framework:Position(vec) -- Retorna Vector3

local cf = CFrame.new(0, 10, 0)
local position = Framework:Position(cf) -- Retorna Vector3

local model = workspace.Model
local position = Framework:Position(model) -- Retorna Vector3 do PrimaryPart

🎨 TextColor

Adicione cor ao texto.

local coloredText = Framework:TextColor("Olá Mundo", "rgb(255,0,0)")

🔢 FormatNumber

Formate números grandes com sufixos.

local formatted = Framework:FormatNumber(1500)       -- Resultado: "1.5K"
local formatted = Framework:FormatNumber(1500000)    -- Resultado: "1.5M"

-- Com sufixos personalizados
local sufixos = {"Mil", "Mi", "Bi", "Tri"}
local formatted = Framework:FormatNumber(1500, sufixos) -- Resultado: "1.5Mil"

💲 Price

Formate preços com múltiplas moedas e cores.

local preco = Framework:Price({
    currencies = {
        {amount = 1500, symbol = "$", color = "rgb(255,215,0)"},
        {amount = 750, symbol = "💎", color = "rgb(0,191,255)"}
    },
    separator = " + "
})

📏 Distance

Calcule a distância entre dois objetos ou posições.

local part1 = workspace.Part1
local part2 = workspace.Part2
local distancia = Framework:Distance(part1, part2)

🤖 Humanoid

Verifique o estado do Humanoid do jogador.

local estaAndando = Framework:Humanoid("Walking") -- Retorna boolean
local estaPulando = Framework:Humanoid("Jumping") -- Retorna boolean

🌐 NetworkOwner

Cheque se um objeto está sob controle de rede do jogador.

local part = workspace.Part
local temControle = Framework:NetworkOwner(part) -- Retorna boolean

⚔️ EquipTool e UnequipTool

Gerencie ferramentas no inventário.

Framework:EquipTool("Espada")   -- Equipa a ferramenta
Framework:UnequipTool("Espada") -- Desequipa a ferramenta

🔄 Rejoin

Reconecte-se ao servidor atual.

Framework:Rejoin()

🖼️ CreateWindow

Crie uma janela de interface utilizando a biblioteca Fluent.

local window = Framework:CreateWindow("Meu Jogo", Enum.KeyCode.LeftAlt)


---

⚖️ Direitos Autorais e Uso Restrito

Copyright © 2024 Yan. Todos os direitos reservados.

Termos de Uso:

Este framework é de propriedade exclusiva de Yan.

Qualquer uso ou distribuição sem autorização expressa é estritamente proibido.

Acesso ao código fonte não concede permissão para cópia, modificação ou redistribuição.


Desenvolvido com dedicação por Yan.
Entre em contato para dúvidas ou solicitações de acesso.


---
