*** Settings ***

Resource    ../base.robot

*** Variables ***

#prefixo
${prefixo_text}    

${ICONE_PERFIL}                 xpath=//android.widget.ScrollView/android.view.View[1]
${SALDO_INICIO}                 xpath=//android.view.View[contains(@content-desc,"R$ 181,79")]
${NAME}                         xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${MEUS_CARTOES}                 xpath=//android.view.View[@content-desc="Meus cartões"]
${EYE_ICON}                     xpath=//android.widget.ScrollView/android.widget.Button[1]
${INFO_ICON}                    xpath=//android.widget.ScrollView/android.widget.Button[2]
${CONVITE_ICON}                 xpath=//android.widget.ScrollView/android.widget.Button[3]
${SALDO_OCULTO}                 xpath=//android.view.View[contains(@content-desc,"Conta")]
${FATURA_INFO}                  xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${EMPRESTIMO_CARD}              xpath=//android.view.View[contains(@content-desc,"Valor disponível de até")]
${INVESTIMENTO_CARD}            xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${SEGURO_CARD}                  xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]
${EMPRESTIMO_CARROSSEL}         xpath=//android.view.View[contains(@content-desc,"empréstimo.")]
${POUP_CARROSSEL}               xpath=//android.view.View[contains(@content-desc,"Conquiste")]
${WPP_CARD}                     xpath=//android.view.View[contains(@content-desc,"WhatsApp")]
${CARD_INDIQUE}                 xpath=//android.view.View[contains(@content-desc,"Indique seus amigos")]
${TXT_CONTA}                    xpath=//android.view.View[@content-desc="Saldo disponível"]
${TXT_DINHEIRO}                 xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
${TXT_PIX}                      xpath=//android.view.View[@content-desc="Pix"]
${TXT_PAGAR}                    xpath=//android.view.View[@content-desc="Pagar"]
${TXT_TRANSF}                   xpath=//android.view.View[@content-desc="Transferir"]
${TXT_DEP}                      xpath=//android.view.View[@content-desc="Depositar"]
${TXT_EMPRESTIMO}               xpath=//android.view.View[@content-desc="Empréstimos"]
${TXT_RECARGA}                  xpath=//android.view.View[@content-desc="Recarga de celular"]
${TXT_COBRAR}                   xpath=//android.view.View[@content-desc="Cobrar"]
${TXT_DOAR}                     xpath=//android.view.View[@content-desc="Doação"]
${TXT_ATALHO}                   xpath=//android.view.View[@content-desc="Encontrar atalhos"] 

${BTN_INDICAR_AMIGOS}           xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${BTN_INDIQUE}                  xpath=//android.view.View[@content-desc="Indicar amigos"]
${BTN_WPP}                      xpath=//android.view.View[contains(@content-desc,"Quero conhecer")]  
${BTN_INV}                      xpath=//android.view.View[contains(@content-desc,"Conhecer")]
${BTN_PIX}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BTN_PAGAR}                    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_TRANSF}                   xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BTN_DEP}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BTN_EMPRESTIMO}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_RECARGA}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_COBRAR}                   xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BTN_DOAR}                     xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BTN_ATALHO}                   xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

${INDIQUE_PAGE}                 xpath=//android.widget.ImageView[contains(@content-desc,"Resgate")]
${EMPRESTIMO_PAGE}              xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${COBRAR_PAGE}                   xpath=//android.widget.EditText[@text="R$ 0,00"]



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

Então será possível visualizar ícone de informações
    Espera o elemento e faz o clique    ${INFO_ICON}

Então será possível visualizar ícone de convite
    Espera o elemento e faz o clique    ${CONVITE_ICON}

Então será possível ocultar saldo da tela incial
    Visualiza elemento    ${SALDO_OCULTO}


Então será possível visualizar informações sobre a fatura atual
    Visualiza texto    ${FATURA_INFO}    Cartão de Crédito
    Visualiza texto    ${FATURA_INFO}    Fatura atual
    Visualiza texto    ${FATURA_INFO}    R$ 780,72
    Visualiza texto    ${FATURA_INFO}    Limite disponível
    Visualiza texto    ${FATURA_INFO}    R$ 806,78
    Espera o elemento e faz o clique    ${FATURA_INFO}

Então será possível visualizar informações sobre empréstimo
    Swipe By Percent    50    50    50    20
    Visualiza texto    ${EMPRESTIMO_CARD}    Empréstimo\nValor disponível de até\nR$ 10.000,00
    Click Element      ${EMPRESTIMO_CARD}

Então será possível visualizar informações sobre investimentos
    Swipe By Percent    50    50    50    0
    Visualiza texto       ${INVESTIMENTO_CARD}    Investimentos\nA revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital.
    Visualiza elemento    ${BTN_INV}
    Espera o elemento e faz o clique    ${INVESTIMENTO_CARD}

Então será possível visualizar informações sobre Seguro de Vida
    Swipe By Percent    50    90    50    5
    Espera o elemento e faz o clique    ${SEGURO_CARD}

Então será possível visualizar informações sobre pagamento pelo WhatsApp
    Swipe By Percent    50    90    50    0
    Visualiza texto    ${WPP_CARD}    WhatsApp\nNovo\nPagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.
    Espera o elemento e faz o clique   ${BTN_WPP}

Então será possível visualizar funcionalidade de indicar amigos
      Swipe By Percent    50    90    50    0
      Swipe By Percent    90    80    20    80
      Visualiza texto    ${CARD_INDIQUE}   Indique seus amigos\nMostre aos seus amigos como é fácil ter uma vida sem burocracia.
      Espera o elemento e faz o clique    ${BTN_INDIQUE}
      Visualiza texto    ${INDIQUE_PAGE}    Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia
        
Então será possível visualizar card de empréstimo
    Visualiza texto    ${EMPRESTIMO_CARROSSEL}    Você tem R$ 10.000,00 disponíveis para empréstimo.

Então será possível visualizar card
    Swipe By Percent    50    70    0    70
    Visualiza texto    ${POUP_CARROSSEL}    Conquiste planos futuros: conheça as opções para guardar dinheiro.

Então será possível visualizar e clicar no botão de pix
    Visualiza texto    ${TXT_PIX}    Pix
    Espera o elemento e faz o clique    ${BTN_PIX}

Então será possível visualizar e clicar no botão de pagar
    Visualiza texto    ${TXT_PAGAR}    Pagar
    Espera o elemento e faz o clique    ${BTN_PAGAR}

Então será possível visualizar e clicar no botão de transferir
    Visualiza texto    ${TXT_TRANSF}    Transferir
    Espera o elemento e faz o clique    ${BTN_TRANSF}

Então será possível visualizar e clicar no botão de depositar
    Visualiza texto    ${TXT_DEP}    Depositar
    Espera o elemento e faz o clique    ${BTN_DEP}

Então será possível visualizar e clicar no botão de empréstimo
    Swipe By Percent    90    40   10   40
    Visualiza texto    ${TXT_EMPRESTIMO}    Empréstimos
    Espera o elemento e faz o clique    ${BTN_EMPRESTIMO}

Então será possível visualizar e clicar no botão de recarga de celular
    Swipe By Percent    90    40   0   40
    Visualiza texto    ${TXT_RECARGA}    Recarga de Celular
    Espera o elemento e faz o clique    ${BTN_RECARGA}

Então será possível visualizar e clicar no botão de Cobrar
    Swipe By Percent    90    40   0   40
    Visualiza texto    ${TXT_COBRAR}    Cobrar
    Espera o elemento e faz o clique    ${BTN_COBRAR}
    Visualiza conteudo   ${COBRAR_PAGE}    Qual valor você quer receber?
    

Então será possível visualizar e clicar no botão de Doação
    Swipe By Percent    90    40   0   40
    Visualiza texto    ${TXT_DOAR}    Doação
    Espera o elemento e faz o clique    ${BTN_DOAR}

Então será possível visualizar e clicar no botão de Escontrar Atalhos
    Swipe By Percent    90    40   0   40
    Visualiza texto    ${TXT_ATALHO}    Encontrar atalhos
    Espera o elemento e faz o clique    ${BTN_ATALHO}
