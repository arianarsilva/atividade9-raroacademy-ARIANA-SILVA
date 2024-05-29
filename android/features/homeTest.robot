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

Verificar ícone para informações
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar ícone de informações

Verificar ícone de convite
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar ícone de convite

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

Verificar se é possível visualizar a funcionalidade de Seguro de Vida
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre Seguro de Vida

Verificar funcionalidade de pagamento pelo WhatsApp
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar informações sobre pagamento pelo WhatsApp

Verificar funcionalidade de Indicar os amigos
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar funcionalidade de indicar amigos

Verificar card de empréstimo no carrossel
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar card de empréstimo

Verificar card "Opções de guardar dinheiro" no carrossel
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar card

Verificar botão de pix da página inicial
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar e clicar no botão de pix

Verificar botão de pagar da página inicial
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar e clicar no botão de pagar

Verificar botão de transferir da página inicial
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar e clicar no botão de transferir

Verificar botão de depositar da página inicial
    Dado que o usuário está logado
    Quando acessar à página inicial
    Então será possível visualizar e clicar no botão de depositar

