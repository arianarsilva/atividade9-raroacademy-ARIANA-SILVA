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
${INFO_EMPRESTIMO_ICON}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
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
${TXT_FATURA}                   xpath=//android.view.View[@content-desc="Fatura atual"]
${TXT_LIMITE}                   xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]
${TXT_HISTORICO1}               xpath=//android.view.View[contains(@content-desc,"Pagamento recebido")]
${TXT_HISTORICO2}               xpath=//android.view.View[contains(@content-desc,"Supermercado")]
${TXT_HISTORICO3}               xpath=//android.view.View[contains(@content-desc,"Transferência")]
${TXT_EMPRESTIMO2}              xpath=//android.view.View[contains(@content-desc,"Este valor")]
${TXT_NOVO_EMPRESTIMO}          xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]

${VAL_FATURA}                   xpath=//android.view.View[@content-desc="R$ 780,72"]
${LINK_EMPRESTIMO}              xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${BTN_NOVO_EMPRESTIMO}          xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]

${BTN_DEPOSITO_VOLTAR}          xpath=//android.widget.Button
${BTN_EMPRESTIMO_VOLTAR}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[1]
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
${BTN_PAGAR_FATURA}             xpath=//android.view.View[@content-desc="Pagar fatura"]
${BTN_RESUMO_FATURAS}           xpath=//android.view.View[@content-desc="Resumo de faturas"]
${BTN_AJUSTE_LIMITES}           xpath=//android.view.View[@content-desc="Ajustar limites"]
${BTN_CARTAO_VIRTUAL}           xpath=//android.view.View[@content-desc="Cartão virtual"]
${BTN_BLOQ_CARTAO}              xpath=//android.view.View[@content-desc="Bloquear cartão"]
${BTN_INDICAR}                  xpath=//android.view.View[@content-desc="Indicar amigos"]      
${DEPOSITAR_PIX}                xpath=//android.view.View[contains(@content-desc,"Pix")]
${DEPOSITAR_BOLETO}             xpath=//android.view.View[contains(@content-desc,"Boleto")]   
${DEPOSITAR_TED}                xpath=//android.view.View[contains(@content-desc,"TED")]
${DEPOSITAR_SALARIO}            xpath=//android.view.View[contains(@content-desc,"salário")]



${INDIQUE_PAGE}                 xpath=//android.widget.ImageView[contains(@content-desc,"Resgate")]
${EMPRESTIMO_PAGE}              xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${COBRAR_PAGE}                   xpath=//android.widget.EditText[@text="R$ 0,00"]
${DEPOSITO_PAGE}                xpath=//android.view.View[contains(@content-desc,"depositar")]


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

# CARTÃO DE CREDITO
Dado que o usuário está na tela inicial
    Visualiza texto    ${NAME}    Olá, Breno Freitas

Quando acessar à funcionalidade de cartão de crédito
    Espera o elemento e faz o clique    ${FATURA_INFO}

Então será possível verificar as informações sobre a fatura atual
    Visualiza texto    ${TXT_FATURA}    Fatura
    Visualiza texto    ${VAL_FATURA}    R$ 780,72
    Visualiza texto    ${TXT_LIMITE}    Limite disponível R$ 806,78

Então será possível acessar a funcionalidade de pagar a fatura
    Visualiza texto      ${BTN_PAGAR_FATURA}    Pagar fatura
    Click Element        ${BTN_PAGAR_FATURA}

Então será possível acessar o resumo de faturas
    Visualiza texto    ${BTN_RESUMO_FATURAS}    Resumo de faturas
    Click Element      ${BTN_RESUMO_FATURAS}

Então será possível verificar acessar a funcionalidade de ajustar limites
    Visualiza texto    ${BTN_AJUSTE_LIMITES}    Ajustar limites
    Click Element      ${BTN_AJUSTE_LIMITES}

Então será possível verificar acessar a funcionalidade de cartão virtual
    Visualiza texto    ${BTN_CARTAO_VIRTUAL}    Cartão virtual

Então será possível verificar acessar a funcionalidade de bloquear cartão
    Swipe By Percent    80    80    40    40
    Visualiza texto    ${BTN_BLOQ_CARTAO}    Bloquear cartão

Então será possível verificar acessar a funcionalidade de indicar amigos
    Swipe By Percent    80    80    40    40
    Visualiza texto    ${BTN_INDICAR}    Indicar amigos

Então será possível verificar acessar o histórico de gastos do cartão de crédito
    Swipe By Percent    50    50    50    20
    Visualiza texto    ${TXT_HISTORICO1}    Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix
    Visualiza texto    ${TXT_HISTORICO2}    Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix
    Visualiza texto    ${TXT_HISTORICO3}    Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix

#depósito

Quando acessar a funcionalidade de depósito
    Espera o elemento e faz o clique    ${BTN_DEP}

Então será possível visualizar todas as informações relacionadas à funcionalidade
    Visualiza texto    ${DEPOSITO_PAGE}            Como você quer depositar na sua conta do Nubank
    Visualiza texto    ${DEPOSITAR_PIX}            Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana.
    Visualiza texto    ${DEPOSITAR_BOLETO}         Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair.
    Visualiza texto    ${DEPOSITAR_TED}            TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis.
    Visualiza texto    ${DEPOSITAR_SALARIO}        Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo.

E será possível retornar à página inicial clicando no botão X
    Espera o elemento e faz o clique    ${BTN_DEPOSITO_VOLTAR}
    Visualiza texto    ${NAME}    Olá, Breno Freitas
    

#emprestimo
Quando acessar a funcionalidade de empréstimo
    Swipe By Percent    90    40   30   40
    Espera o elemento e faz o clique    ${BTN_EMPRESTIMO}

Então será possível visualizar todas funções relacionadas    
    Visualiza texto    ${EMPRESTIMO_PAGE}    O valor disponível no momento é de R$ 10.000,00
    Visualiza texto    ${TXT_EMPRESTIMO2}    Este valor pode mudar diariamente devido à nossa análise de crédito.
    Element Should Be Enabled    ${LINK_EMPRESTIMO}
    Espera o elemento e faz o clique    ${BTN_NOVO_EMPRESTIMO}

E será possível retornar à página inicial
    Espera o elemento e faz o clique    ${BTN_EMPRESTIMO_VOLTAR}
    Visualiza texto    ${NAME}    Olá, Breno Freitas
    

Então será possível visualizar botão de informações
    Visualiza elemento    ${INFO_EMPRESTIMO_ICON}
