*** Settings *** 

Resource    ../main.robot

*** Variables ***
&{tarefa_um}
...    link=https://itera-qa.azurewebsites.net/home/automation
...    ConfirmPage=//h1[@class="display-3"]
...    CampoNome=//input[@id='name']
...    CampoPhone=//input[@id="phone"]
...    CampoEmail=//input[@id="email"]
...    CampoSenha=//input[@id="password"]
...    CampoAdress=//textarea[@id="address"]


*** Keywords ***


Quando ele preencher o campo de Name
    Wait Until Element Is Visible    ${tarefa_um.CampoNome}
    Input Text    ${tarefa_um.CampoNome}    ${dados_t1.Nome}    
    Sleep    5   
    Textfield Should Contain    ${tarefa_um.CampoNome}    ${dados_t1.Nome}

E preencher o campo Mobile number
    Wait Until Element Is Visible    ${tarefa_um.CampoPhone}
    Input Text    ${tarefa_um.CampoPhone}    ${dados_t1.NumeroTelefonico}    
    Sleep    5   
    Textfield Should Contain    ${tarefa_um.CampoPhone}    ${dados_t1.NumeroTelefonico}

E preencher o campo Email address
    Wait Until Element Is Visible    ${tarefa_um.CampoEmail}
    Input Text    ${tarefa_um.CampoEmail}    ${dados_t1.EnderecoEmail}    
    Sleep    5   
    Textfield Should Contain    ${tarefa_um.CampoEmail}    ${dados_t1.EnderecoEmail}  

E preencher o campo Password
    Wait Until Element Is Visible    ${tarefa_um.CampoSenha}
    Input Text    ${tarefa_um.CampoSenha}    ${dados_t1.Senha}    
    Sleep    5   
    Textfield Should Contain    ${tarefa_um.CampoSenha}    ${dados_t1.Senha}

E preencher o campo Adress
    Wait Until Element Is Visible    ${tarefa_um.CampoAdress}
    Input Text    ${tarefa_um.CampoAdress}    ${dados_t1.Adress}    
    Sleep    5   
    Textarea Should Contain    ${tarefa_um.CampoAdress}    ${dados_t1.Adress}  