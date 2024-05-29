*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***

Verificar botão de depositar da página inicial
    Dado que o usuário está na tela inicial
    Quando acessar a funcionalidade de depósito
    Então será possível visualizar todas as informações relacionadas à funcionalidade
    E será possível retornar à página inicial clicando no botão X