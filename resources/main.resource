*** Settings ***
Documentation        Arquivo principal do projeto

Library              Browser

Resource             ../resources/pages/dash.resource
Resource             ../resources/pages/login.resource

*** Keywords ***
Do Login
    Go To Login Page
    Submit Credentials        papito@gmail.com              vaibrasil
    User Logged In

Start Test
    New Browser        headless=false        browser=chromium

Finish Test
    Take Screenshot