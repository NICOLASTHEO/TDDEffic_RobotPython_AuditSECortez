***Settings***
Library     SeleniumLibrary

***Variables***
${url}      https://www.secortezaraujo.com.br

***Keywords***
New Session
    Open browser     ${url}      chrome
End Session     
    Capture Page Screenshot
    Close browser
