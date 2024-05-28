*** Settings ***

Resource    ../base.robot


*** Variables ***

#prefixo
${prefixo_text}    

${ICONE_PERFIL}         xpath=//android.widget.ScrollView/android.view.View[1]
${SALDO_INICIO}         xpath=//android.view.View[contains(@content-desc,"R$ 181,79")]
${BTN_PIX}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${NAME}                 xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${CONTA_TEXTO}          xpath=//android.view.View[@content-desc="Saldo disponível"]
${DINHEIRO_TEXT}        xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
${MEUS_CARTOES}         xpath=//android.view.View[@content-desc="Meus cartões"]
${EYE_ICON}             xpath=//android.widget.ScrollView/android.widget.Button[1]
${SALDO_OCULTO}         xpath=//android.view.View[contains(@content-desc,"Conta")]
${FATURA_INFO}          xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${EMPRESTIMO_CARD}      xpath=//android.view.View[contains(@content-desc,"Valor disponível de até")]
${INVESTIMENTO_CARD}    xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${INV_BTN}              xpath=//android.view.View[contains(@content-desc,"Conhecer")]
${SEGURO_CARD}          xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]



*** Keywords ***
Dado que o usuário está logado
    Visualiza elemento   ${ICONE_PERFIL}
    # Visualiza elemento    ${ICONE_PERFIL}
Quando acessar à página inicial
    Visualiza texto    ${NAME}    Olá, Breno Freitas
Então será possível verificar seu saldo
    Visualiza texto    ${SALDO_INICIO}    Conta\nR$ 181,79
    
#
Então será possível acessar informações de cartões
    Espera o elemento e faz o clique    ${MEUS_CARTOES}

E clicar no ícone "olho"
    Espera o elemento e faz o clique    ${EYE_ICON}

Então será possível ocultar saldo da tela incial
    Visualiza elemento    ${SALDO_OCULTO}

Então será possível visualizar informações sobre a fatura atual
    Visualiza texto    ${FATURA_INFO}    Fatura atual
    Visualiza texto    ${FATURA_INFO}    R$ 780,72
    Visualiza texto    ${FATURA_INFO}    Limite disponível
    Visualiza texto    ${FATURA_INFO}    R$ 806,78
    Espera o elemento e faz o clique    ${FATURA_INFO}

Então será possível visualizar informações sobre empréstimo
    Swipe By Percent    50    50    50    20
    Visualiza texto    ${EMPRESTIMO_CARD}    Empréstimo\nValor disponível de até\nR$ 10.000,00
    Click Element    ${EMPRESTIMO_CARD}

Então será possível visualizar informações sobre investimentos
    Swipe By Percent    50    50    50    0
    Visualiza texto    ${INVESTIMENTO_CARD}    Investimentos\nA revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital.

    Espera o elemento e faz o clique    ${INVESTIMENTO_CARD}

Então será possível visualizar informações sobre Seguro de Vida
    Swipe By Percent    50    90    50    5
    Espera o elemento e faz o clique    ${SEGURO_CARD}

Então será possível visualizar informações sobre pagamento pelo WhatsApp
    Swipe By Percent    50    90    50    0
