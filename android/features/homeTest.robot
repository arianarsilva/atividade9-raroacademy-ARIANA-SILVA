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

Verificar se é possível visualizar a funcionalidade de empréstimo
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre empréstimo

Verificar se é possível visualizar a funcionalidade de investimentos
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre investimentos
    # Se der tempo testar botão conhecer

Verificar se é possível visualizar a funcionalidade de Seguro de Vida
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre Seguro de Vida

Verificar funcionalidade de pagamento pelo WhatsApp
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre pagamento pelo WhatsApp

Verificar card de empréstimo no carrossel
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar card de empréstimo

Verificar card "Opções de guardar dinheiro" no carrossel
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar card