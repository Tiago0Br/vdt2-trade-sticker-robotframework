*** Settings ***
Library   Browser

*** Variables ***
${slogan}               Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve exibir o slogan da aplicação na tela home
    New Browser         headless=false
    New Page            https://trade-sticker-dev.vercel.app
    Get Text            .logo-container h2    contains    ${slogan}
    Take Screenshot     tela_home