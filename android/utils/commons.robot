*** Settings ***

Resource    ../base.robot
Library    AppiumLibrary

*** Keywords ***

Espera o elemento e faz o clique
    [Arguments]                      ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Visualiza texto
    [Arguments]    ${elemento}    ${nome}
    Element Should Be Visible    ${elemento}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc 
    Should Contain    ${contentDesc}    ${nome}

Visualiza elemento
    [Arguments]                  ${elemento}
    Element Should Be Visible    ${elemento}