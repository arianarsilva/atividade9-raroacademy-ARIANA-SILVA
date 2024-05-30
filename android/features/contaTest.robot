*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***
Verificar informações de saldo na tela de conta
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível visualizar todas as informações referentes ao saldo
    E será possível retornar à Homepage

Verificar ícone de informações na tela de conta
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível acessar o ícone de informações

Verificar botão Depositar na tela de conta
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível acessar à funcionalidade de Depositar

Verificar botão Pagar na tela de conta
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível acessar à funcionalidade de pagar

Verificar botão Transferir na tela de conta
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível acessar à funcionalidade de transferir
    E será possível inserir o valor para transferência

Verificar botão Cobrar na tela de conta
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível acessar à funcionalidade de cobrar

Verificar histórico de transações
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de conta
    Então será possível acessar ao histórico de transações