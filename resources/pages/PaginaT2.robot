*** Settings *** 

Resource    ../main.robot

*** Variables ***
&{tarefa_dois}
...    link=https://itera-qa.azurewebsites.net/home/automation
...    ConfirmPage=//h1[@class="display-3"]
...    GenFeminino=(//input[@name="optionsRadios"])[1]
...    GenMasculino=(//input[@name="optionsRadios"])[2]
...    OptionTuesday=//input[@id="tuesday"]
...    OptionFriday=//input[@id="friday"]




*** Keywords ***

Quando ele selecionar o genero masculino
    Wait Until Element Is Visible    ${tarefa_dois.GenMasculino}
    Click Element    ${tarefa_dois.GenMasculino}
    Sleep    2
    Element Should Be Enabled   ${tarefa_dois.GenMasculino}    

Quando ele selecionar o genero Feminino
    Wait Until Element Is Visible    ${tarefa_dois.GenFeminino}
    Click Element    ${tarefa_dois.GenFeminino}
    Sleep    2
    Element Should Be Enabled   ${tarefa_dois.GenFeminino}    

E selecionar a opção "Tuesday"
    Wait Until Element Is Enabled    ${tarefa_dois.OptionTuesday}
    Click Element    ${tarefa_dois.OptionTuesday}
    Checkbox Should Be Selected    ${tarefa_dois.OptionTuesday}  
    Sleep    2     
E selecionar a opção "Friday" 
    Wait Until Element Is Enabled    ${tarefa_dois.OptionFriday}
    Click Element    ${tarefa_dois.OptionFriday}
    Checkbox Should Be Selected    ${tarefa_dois.OptionFriday}    
Então a tarefa será finalizada
    Sleep    2
    Checkbox Should Be Selected    ${tarefa_dois.OptionTuesday}  
    Checkbox Should Be Selected    ${tarefa_dois.OptionFriday} 
    Close Browser
    
       
 
    