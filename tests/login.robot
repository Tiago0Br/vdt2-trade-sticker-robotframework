*** Settings ***
Documentation        Login tests
Resource             ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    Do Login

Não deve logar com senha incorreta
    [Tags]                         inv_pass

    Go To Login Page
    Submit Credentials             papito@gmail.com                    senhaErrada
    # Thinking time
    Sleep                          1
    Toast Message Should Be        Credenciais inválidas, tente novamente!
