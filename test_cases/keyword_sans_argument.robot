*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USER}    https://admin-demo.nopcommerce.com/
${BROWSER}    chrome


*** Test Cases ***
login test
   Lancer le navigateur
   Input Text    id:Email    admin@yourstore.com
   Input Password    id:Password    admin
   Click Button    xpath://button[@type="submit"]
search google
    Lancer le navigateur

*** Keywords ***
Lancer le navigateur
    Open Browser     ${USER}    ${BROWSER}
    Maximize Browser Window