*** Settings ***
Test Setup    Dado um usuário acessando o site Itera    
Resource        ../../resources/main.robot

*** Test Cases ***

Preenchendo Dados
    Quando ele preencher o campo de Name
    E preencher o campo Mobile number
    E preencher o campo Password
    E preencher o campo Adress