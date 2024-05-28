*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***

Verificar informação de saldo
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível verificar seu saldo

Verificar informação de cartões
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível acessar informações de cartões

Verificar ícone "Olho" para ocultar saldo
    Dado que o usuário está logado
    Quando acessar à página inicial
    E clicar no ícone "olho"
    Então será possível ocultar saldo da tela incial

Verificar se o valor da fatura atual está visível
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre a fatura atual
