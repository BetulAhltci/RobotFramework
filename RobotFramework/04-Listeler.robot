*** Settings ***

Library    Collections

*** Variables ***
${isim}=    Yusuf
@{isim_Listesi}=    Yusuf    Ahmet    Mehmet    Veli


*** Test Cases ***
Test01
    Log To Console    ${isim_Listesi}
    @{yeni_liste}=    Create List    Aysel    Aysegul    Semra
    Log To Console    ${yeni_liste}
    Append To List    ${yeni_liste}    xxx
    Log To Console    ${yeni_liste}
 

*** Keywords ***