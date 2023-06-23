*** Settings *** 

Test Setup    Dado um usuário acessando o site Itera
Resource    ../../resources/main.robot

*** Test Cases ***

Tarefa2 - Genero Masculino: 
    Quando ele selecionar o genero masculino
    E selecionar a opção "Tuesday"      
    E selecionar a opção "Friday" 
    Então a tarefa será finalizada
Tarefa2 - Genero Feminino: 
    Quando ele selecionar o genero Feminino
    E selecionar a opção "Tuesday"      
    E selecionar a opção "Friday" 
    Então a tarefa será finalizada