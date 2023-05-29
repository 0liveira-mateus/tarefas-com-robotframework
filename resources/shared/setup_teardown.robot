*** Settings *** 

Resource    ../main.robot


*** Keywords *** 
Dado um usuário acessando o site Itera
    Open Browser    ${tarefa_um.link}    Edge
    Element Should Be Visible    ${tarefa_um.ConfirmPage} 
    Element Text Should Be    ${tarefa_um.ConfirmPage}    Test automation practice form
    Sleep    5