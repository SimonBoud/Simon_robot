*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://admin-demo.nopcommerce.com
${BROWSER}    chrome

*** Test Cases ***
Login Test
    ${Titre}=    Lancer le navigateur     ${URL}    ${BROWSER}
    Log To Console    ${Titre}    # = Log = return
    Input Text    id:Email    admin@yourstore.com    
    Input Password       id:Password    admin
    Click Button    xpath://button[@type="submit"]


search google       
    Lancer le navigateur     ${URL}    ${BROWSER}
*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL1}    ${BROWSER1}
    Open Browser    ${URL1}    ${BROWSER1}
    Maximize Browser Window
    ${Titre_page} =    Get Title               #c'est un return
    [Return]    ${Titre_page}   