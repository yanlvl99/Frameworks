# **Yan's Framework v0.1**

Uma biblioteca utilitária privada para Roblox com uma vasta gama de funcionalidades para simplificar tarefas comuns no desenvolvimento de jogos. Este framework inclui ferramentas para manipulação de posições, formatação de texto e números, gerenciamento de ferramentas, teleporte de jogadores e mais.

⚠️ **AVISO: Este é um framework privado e de uso restrito. Distribuição e uso não autorizados são estritamente proibidos.**

---

## 📥 **Instalação**

Para começar a usar o framework, basta executar o seguinte comando:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/yanlvl99/Frameworks/refs/heads/main/base.lua"))()
local Framework = Framework.new()
```

---

## 🚀 **Funcionalidades**

O framework é projetado para ser modular e extensível. Aqui estão algumas das principais funções disponíveis:

### **Flexibilidade e Extensibilidade**
Você pode adicionar novas funcionalidades ao framework ou reutilizar as funções existentes em suas próprias implementações.

```lua
-- Criando uma nova função personalizada
function Framework:Printar(texto)
    print(texto)
end

-- Combinando funções existentes do framework
function Framework:PrintarNumeroFormatado(numero)
    print(self:FormatNumber(numero)) -- Reutiliza a função FormatNumber
end
```

---

### **Manipulação de Posições**
A função `Position` suporta múltiplos tipos de entrada, incluindo `BasePart`, `Vector3`, `CFrame` e até `Model`. Ele retorna a posição como um `Vector3`.

```lua
local part = workspace.Part
local position = Framework:Position(part) -- Retorna Vector3 (posição da peça)
```

**Casos de Uso**:
- Entrada como `BasePart`, `Vector3`, `CFrame`, `Model` ou até mesmo `Attachment`.
- Retorna uma posição padrão `(0, 0, 0)` para entradas inválidas.

---
**Características**:
- Suporta teleporte direto ou com animação.
- Configurável para verificar a saúde do humanoide e ajustar velocidades.

---

### **Formatação de Texto com Cor**
Adicione cor ao texto usando HTML-like tags.

```lua
local textoComCor = Framework:TextColor("Olá Mundo", "rgb(255,0,0)")
print(textoComCor) -- Retorna '<font color="rgb(255,0,0)">Olá Mundo</font>'
```

---

### **Busca Avançada de Itens**
Procure por itens que contenham palavras-chave em múltiplos pais.

```lua
local parents = {workspace.ExampleFolder, game.Players.LocalPlayer}
local resultado = Framework:FindMatchingItems(parents, true, "Olá", "Lua")
```

**Funcionalidades**:
- Suporta retorno booleano ou lista de itens encontrados.
- Ignora diferenças de maiúsculas e minúsculas.

---

### **Formatação de Números**
Transforma números grandes em representações compactas com sufixos.

```lua
local formatado = Framework:FormatNumber(1500000) -- Resultado: "1.5M"
```

**Personalização**:
- Permite definir sufixos personalizados.

---

### **Cálculo de Distâncias**
Calcule a distância entre duas posições de forma simples.

```lua
local distancia = Framework:Distance(workspace.Part1, workspace.Part2)
print(distancia) -- Exibe a distância em unidades
```

---

### **Gerenciamento de Ferramentas**
Equipa ou desequipa ferramentas no inventário do jogador.

```lua
Framework:EquipTool("Espada")
Framework:UnequipTool("Espada")
```

---

### **Reconexão ao Servidor**
Reconecta o jogador ao mesmo servidor rapidamente.

```lua
Framework:Rejoin()
```

---

### **SimulateKeyPress**  
Simula o pressionamento de uma tecla por um tempo especificado.  

**Parâmetros**:  
- `keyCode` (obrigatório): A tecla que será simulada. Deve ser um valor de `Enum.KeyCode`.  
- `duration` (opcional): A duração do pressionamento em segundos. O padrão é `0.1`.  

```lua
Framework:SimulateKeyPress(Enum.KeyCode.E)  
-- Simula o pressionamento da tecla "E" por 0.1 segundos.

Framework:SimulateKeyPress(Enum.KeyCode.Space, 0.5)  
-- Simula o pressionamento da tecla "Space" por 0.5 segundos.
```

---

### **SimulateMouseClick**  
Simula um clique do mouse em um botão específico.  

**Parâmetros**:  
- `button` (opcional): O botão do mouse a ser clicado. Pode ser `"Left"` para botão esquerdo ou `"Right"` para botão direito. O padrão é `"Left"`.  

```lua
Framework:SimulateMouseClick()  
-- Simula um clique com o botão esquerdo do mouse.

Framework:SimulateMouseClick("Right")  
-- Simula um clique com o botão direito do mouse.
```

---

### **SimulateMouseScroll**  
Simula o movimento de rolagem do mouse em uma direção especificada e uma quantidade de passos.  

**Parâmetros**:  
- `direction` (opcional): A direção da rolagem. Pode ser `"Up"` (para cima) ou `"Down"` (para baixo). O padrão é `"Up"`.  
- `steps` (opcional): O número de passos de rolagem. O padrão é `1`.  

```lua
Framework:SimulateMouseScroll()  
-- Simula uma rolagem para cima com um passo.

Framework:SimulateMouseScroll("Down", 3)  
-- Simula três passos de rolagem para baixo.
```  

---

## ⚖️ **Propriedade e Direitos Autorais**

Copyright © 2024 Yan.  
**Todos os direitos reservados.**

- **Proibido** copiar, modificar ou distribuir sem autorização.
- **Uso restrito** apenas para desenvolvedores autorizados.

Para mais informações ou solicitação de acesso, entre em contato.

