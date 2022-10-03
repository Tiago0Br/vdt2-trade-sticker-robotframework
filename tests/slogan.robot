*** Settings ***
Documentation           Validando slogan da página inicial

Resource                ../resources/main.resource

Test Setup              Start Test
Test Teardown           Finish Test

*** Test Cases ***
Deve exibir o slogan da aplicação na tela home
    Go To Login Page
    Slogan Should Be    Conectando colecionadores de figurinhas da copa.