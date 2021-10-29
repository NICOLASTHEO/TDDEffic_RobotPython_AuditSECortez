***Settings***
Resource    base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Cadastro com sucesso
    [tags]          success
    Go To           ${url}/contato
    Fill with       Theo Nicolas        theonicolas@gmail.com       11988776655         It should be a success test
    
    Page Should Contain                 Obrigado pelo envio!

Cadastro com e-mail inválido
    [tags]          error404
    Go To           ${url}/contato
    Fill with       Theo Nicolas        theonicolas.com.br           11988776655        It should be an error test  
    Page Should Contain                 Insira um endereço de email válido.    #it's a bug! weird span

***Keywords***
Fill With 
    [Arguments]     ${nome}       ${email}            ${cel}             ${msg}        

    Input text                    css:input[id="input_comp-k8cl409c"]             ${nome}
    Input text                    css:input[id=input_comp-k8cl409e1]              ${email}
    Input text                    css:input[id='input_comp-k8cl409g']             ${cel}
    Input text                    id=textarea_comp-k8cl409h2                      ${msg}
    Click element                 class:_1fbEI

#      robot -d ./log tests/validatMoreEleganc.robot
#tag   robot -d ./log -i "tags" tests