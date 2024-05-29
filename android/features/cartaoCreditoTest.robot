*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***
Verificar informações sobre cartão de crédito
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível verificar as informações sobre a fatura atual

Acessar botão de pagar fatura
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível acessar a funcionalidade de pagar a fatura

Acessar botão resumo de faturas
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível acessar o resumo de faturas

Acessar botão de de ajustar limites
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível verificar acessar a funcionalidade de ajustar limites

Acessar botão de cartão virtual
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível verificar acessar a funcionalidade de cartão virtual

Acessar botão de bloquear cartão
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível verificar acessar a funcionalidade de bloquear cartão

Acessar botão de indicar amigos
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível verificar acessar a funcionalidade de indicar amigos

Verificar histórico de gastos
    Dado que o usuário está na tela inicial
    Quando acessar à funcionalidade de cartão de crédito
    Então será possível verificar acessar o histórico de gastos do cartão de crédito