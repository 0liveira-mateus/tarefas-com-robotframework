*** Settings *** 

Resource    ../main.robot


*** Keywords *** 
Dado um usuário acessando o site Itera
    Open Browser    ${tarefa_dois.link}    Edge
    Element Should Be Visible    ${tarefa_dois.ConfirmPage} 
    Element Text Should Be    ${tarefa_dois.ConfirmPage}    Test automation practice form
    Sleep    5