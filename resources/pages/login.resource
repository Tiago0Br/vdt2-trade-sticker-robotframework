*** Settings ***
Documentation          Login Page

Library                Browser

*** Keywords ***
Go To Login Page
    New Page           https://trade-sticker-dev.vercel.app

Fill Email
    [Arguments]        ${email}

    Fill Text          input[name=email]        ${email}

Fill Password
    [Arguments]        ${password}

    Fill Text          input[name=password]     ${password}

Submit Login Form
    Click              css=button >> text=Entrar

Submit Credentials
    [Arguments]        ${email}        ${password}

    Fill Email         ${email}
    Fill Password      ${password}
    Submit Login Form

Toast Message Should Be
    [Arguments]            ${expected_message}
    ${locator}             Set Variable        div[role=alert]
    Get Text               ${locator}          equal        ${expected_message}