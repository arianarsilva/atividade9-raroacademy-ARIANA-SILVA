*** Settings ***

Resource    ../base.robot


*** Variables ***

#prefixo
${prefixo_text}    


${CONTA}        xpath=//android.view.View[@content-desc="Conta R$ 181,79"]
${BTN_PIX}      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${SALDO}        xpath=//android.view.View[@content-desc="R$ 181,79"]
${CONTA}        xpath=//android.widget.ScrollView
${OLA}          xpath=//android.view.View[contains(@content-desc,"Olá, Breno Freitas")]



*** Keywords ***
Dado que o usuário está na tela Inicial
    Wait Until Element Is Visible    ${OLA}
    Element Should Contain Text      ${OLA}    Olá, Breno Freitas

Quando o usuário acessar o campo de Conta
    Click Element                       ${CONTA}

# Então será possível verificar seu saldo
    
    

# E será possível ver também o histórico de transferência