*** Settings *** 

Library     SeleniumLibrary
Library     FakerLibrary

## Data ## 

Resource    data/dados_tarefa1.robot

## Pages ## 

Resource    pages/PaginaHomeItera.robot

## Shared ## 

Resource    shared/setup_teardown.robot