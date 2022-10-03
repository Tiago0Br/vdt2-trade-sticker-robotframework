*** Settings ***
Documentation        Login tests
Resource             ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    Do Login

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials             papito@gmail.com                    senhaErrada
    Toast Message Should Be        Credenciais inválidas, tente novamente!
    Thinking Time

Não deve logar se a senha não for preenchida
    Go To Login Page
    Fill Email                     papito@gmail.com
    Submit Login Form
    Toast Message Should Be        Por favor, informe a sua senha secreta!
    Thinking Time

Não deve logar se o email não for preenchido
    Go To Login Page
    Fill Password                  vaibrasil
    Submit Login Form
    Toast Message Should Be        Por favor, informe o seu email!
    Thinking Time

Não deve logar se o email e a senha não forem preenchidos
    Go To Login Page
    Submit Login Form
    Toast Message Should Be        Por favor, informe suas credenciais!
    Thinking Time