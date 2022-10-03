#  Viver de Teste - 2ª Temporada

##  Descrição

Projeto desenvolvido na segunda temporada do evento **Viver de Teste** da [QAcademy](https://br.qacademy.io).

Foi criado um projeto de Testes Automatizados para a aplicação web [Trade Sticker](https://trade-sticker-dev.vercel.app) (feita para o evento) utilizando o Robot Framework. Os testes criados validam o slogam da tela inicial, o login do usuário e a troca de figurinhas, que é a funcionalidade principal do sistema. O projeto utiliza o padrão Page Object.

##  🚀 Tecnologias

<div>

<a href="https://robotframework.org" title="Robot Framework" target="_blank">

<img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png" heigth="60px" width="60px" />

</a>

<a href="https://www.python.org" title="Python" target="_blank">

<img src="https://s3.dualstack.us-east-2.amazonaws.com/pythondotorg-assets/media/community/logos/python-logo-only.png" heigth="40px" width="40px" />

</a>

<a href="https://playwright.dev" title="Playwright" target="_blank">

<img src="https://raw.githubusercontent.com/github/explore/60cd2530141f67f07a947fa2d310c482e287e387/topics/playwright/playwright.png" heigth="50px" width="50px" />

</a>

</div>

- [Robot Framework](https://robotframework.org) para a escrita dos testes automatizados
- A linguagem de programação [Python](https://www.python.org) necessária para a instalação e execução do projeto
- Biblioteca [Browser](https://github.com/MarketSquare/robotframework-browser) que é basicamente o [Playwright](https://playwright.dev) "por baixo dos panos"

##  👨🏻‍💻 Como executar o projeto

**Pré-requisitos**: [Python](https://www.python.org/downloads/) (Versão 3+) e [NodeJS](https://nodejs.org/en/) instalados no computador.

- Realizar o clone do projeto
- Instalar o Robot Framework via pip (caso não tenha sido instalado)

	    pip install robotframework
- Instalar a biblioteca Browser
		
		pip install robotframework-browser

- Inicializar a biblioteca

		rfbrowser init

- Executar os testes

		robot -d ./logs/ tests/
---

Feito com 💜 &nbsp;por Tiago Lopes 👋 &nbsp;[Meu LinkedIn](https://www.linkedin.com/in/tiago-lopes-7ab0b71a4/)
