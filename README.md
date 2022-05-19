# BlogdoAgi

## Objetivo

Automatizar os dois cenários da funcionalidade pesquisa, a fim de validar seu funcionamento.
A ferramenta Cucumber foi utilizada para executar o teste escrito na liguagem Gherkin.
 
![fluxo de trabalho de exemplo](https://github.com/pauloribeiro93/BlogdoAgi/actions/workflows/ruby.yml/badge.svg)

## 🛠️ Ferramentas Utilizadas
<br>Visual Studio Code
<br>Ruby 2.7
<br>Cmder 1.3
### Gems (Disponíveis em: "https://rubygems.org")
<br>gem capybara
<br>gem cucumber
<br>gem selenium-webdriver, "3.142.7"
<br>gem rspec, "3.10"


### ⚠️ WebDrivers: Incluir a localização em sue ambiente Path (versão compatível com o seu navegador):

```
Para Google Chrome -------  https://chromedriver.chromium.org/downloads
Para Mozilla Firefox -----  https://github.com/mozilla/geckodriver/releases
```

### :computer: Preparando o Ambiente
Clone o projeto do GitHub em um diretório:
```
cd "seu diretorio"
```
```
git clone https://github.com/pauloribeiro93/BlogdoAgi.git
```
###  :runner: E execute o seguinte comando para instalar as dependências do Gemfile
```
bundle install
```
###  :runner: Executando os testes
  Utilize o seguinte comando para executar todos os cenários de teste:
```
cucumber BROWSER=Seu navegador
```

###  🔩 Cenários de Testes
Foram inseridas tags nos cenários caso precise executar isoladamente. Sendo assim, nenhum teste é dependente do outro, prezando a boa prática.
```
Cenario 1: Tentar pesquisar utilizando o Enter em vez de clicar pesquisar.@feliz 
cenario 2: Validar se a mensagem de 'Nenhum resultado' é apresentado utilizando caracteres ou com emojis.@fail
```

### Visualização da Automação:
<img src="https://github.com/pauloribeiro93/BlogdoAgi/blob/main/gifs/ezgif.com-gif-maker.gif"/>


### :infinity: CI/CD

- GitHub Actions

#### Toda alteração efetuada na branch main executará o teste, gerando evidencias com Screenshot apenas no caso de falha.
<img src="https://github.com/pauloribeiro93/BlogdoAgi/blob/main/gifs/CICD.png"/>

####  Falha nos Testes é gerado Screenshot
<img src="https://github.com/pauloribeiro93/BlogdoAgi/blob/main/gifs/CICD_Falha.png"/>
