*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***
Então será possível visualizar e clicar no botão de empréstimo
    Swipe By Percent    90    40   10   40
    Visualiza texto    ${TXT_EMPRESTIMO}    Empréstimos
    Espera o elemento e faz o clique    ${BTN_EMPRESTIMO}
    Visualiza texto    ${EMPRESTIMO_PAGE}    O valor disponível no momento é de R$ 10.000,00
    Visualiza texto    $elemento    $nome