*** Settings ***
Documentation          Login Page

Library                Browser

*** Keywords ***
Go To Login Page
    New Page           https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]        ${email}        ${password}
    Fill Text          input[name=email]        ${email}
    Fill Text          input[name=password]     ${password}
    Click              css=button >> text=Entrar

Toast Message Should Be
    [Arguments]            ${expected_message}
    ${locator}             Set Variable        div[role=alert]
    Get Text               ${locator}          equal        ${expected_message}