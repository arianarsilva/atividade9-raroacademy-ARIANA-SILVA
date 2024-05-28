*** Settings ***

Resource            ../utils/config.robot

Test Setup         Abrir App
Test Teardown      Teardown

*** Test Cases ***

Verificar campo de Conta
    Dado que o usuário está na tela Inicial
    Quando o usuário acessar o campo de Conta
    # Então será possível verificar seu saldo

