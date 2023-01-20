*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://admin-demo.nopcommerce.com/
${BROWSER}    chrome


*** Test Cases ***
login test
   ${Titre}=     Lancer le navigateur    ${URL}    ${BROWSER}
   Log To Console    ${Titre}
   Input Text    id:Email    admin@yourstore.com
   Input Password    id:Password    admin
   Click Button    xpath://button[@type="submit"]


*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL1}    ${BROWSER1}
    Open Browser     ${URL1}    ${BROWSER1}
    Maximize Browser Window
    ${titre_page}=    Get Title
    [Return]    ${titre_page}