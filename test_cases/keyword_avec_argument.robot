*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL1}    https://admin-demo.nopcommerce.com/
${BROWSER1}    chrome
${URL2}    https://google.com/
${BROWSER2}    chrome


*** Test Cases ***
login test
   Lancer le navigateur    ${URL1}    ${BROWSER1}
   Input Text    id:Email    admin@yourstore.com
   Input Password    id:Password    admin
   Click Button    xpath://button[@type="submit"]
search google
    Lancer le navigateur    ${URL2}    ${BROWSER2}

*** Keywords ***
Lancer le navigateur
    [Arguments]    ${url_site}    ${navigateur}
    Open Browser     ${url_site}    ${navigateur}
    Maximize Browser Window