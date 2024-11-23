<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yan's Framework</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #77aaff 3px solid;
        }
        header a {
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }
        header ul {
            padding: 0;
            list-style: none;
        }
        header li {
            float: left;
            display: inline;
            padding: 0 20px 0 20px;
        }
        header #branding {
            float: left;
        }
        header #branding h1 {
            margin: 0;
        }
        header nav {
            float: right;
            margin-top: 10px;
        }
        .showcase {
            min-height: 400px;
            background: url('showcase.jpg') no-repeat 0 -400px;
            text-align: center;
            color: #fff;
        }
        .showcase h1 {
            margin-top: 100px;
            font-size: 55px;
            margin-bottom: 10px;
        }
        .showcase p {
            font-size: 20px;
        }
        .main {
            padding: 20px;
            background: #fff;
            margin-top: 20px;
        }
        .main h2 {
            color: #333;
        }
        .main pre {
            background: #333;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
        }
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 30px;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1>Yan's Framework</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="#intro">Introdução</a></li>
                    <li><a href="#examples">Exemplos de Uso</a></li>
                    <li><a href="#version">Versão</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="showcase">
        <div class="container">
            <h1>Bem-vindo ao Yan's Framework</h1>
            <p>Facilitando o desenvolvimento de scripts no Roblox</p>
        </div>
    </section>

    <section class="main container">
        <h2 id="intro">Introdução</h2>
        <p>Este framework fornece várias funções utilitárias para facilitar o desenvolvimento de scripts no Roblox. Abaixo estão exemplos de como usar cada função do framework.</p>

        <h2 id="examples">Exemplos de Uso</h2>

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

        <h2 id="version">Versão</h2>
        <pre><code>
Framework.Version:print()
        </code></pre>
    </section>

    <footer>
        <p>Yan's Framework &copy; 2024</p>
    </footer>
</body>
</html>
