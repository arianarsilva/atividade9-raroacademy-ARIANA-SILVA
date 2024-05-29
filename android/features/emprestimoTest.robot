*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***
Verificar botão de empréstimo da página inicial
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de empréstimo
    Então será possível visualizar todas funções relacionadas
    E será possível retornar à página inicial

Verificar botão de informações da tela de empréstimo
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de empréstimo
    Então será possível visualizar botão de informações





