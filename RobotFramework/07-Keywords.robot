*** Settings ***

*** Variables ***
${isim}=    Yusuf

*** Test Cases ***
Test01
    Ekrana Merhaba Yaz
    Ekrana Yaz    Merhaba Yusuf
    Ekrana Yaz    ${isim} Nasılsın
    Ekrana Wise Quarter Yaz
    ${Sayilarin_Toplami}=    Sayilari Topla    10    20
    Log To Console    ${Sayilarin_Toplami}
    ${a}    ${b}    İki veya Daha Fazla Deger Döndüren Keywords
    Log To Console    ${a}
    Log To Console    ${b}
Test02
    Log To Console    Burası 2. test    

*** Keywords ***
Ekrana Merhaba Yaz
    Log To Console    Merhaba


Ekrana Yaz
    [Arguments]    ${yazi}
    Log To Console    ${yazi}

Ekrana ${yazi} Yaz
    Log To Console    ${yazi}

Sayilari Topla
        [Arguments]    ${sayi1}    ${sayi2}
        ${topla}=    Evaluate    ${sayi1} + ${sayi2}
        RETURN     ${topla}

İki veya Daha Fazla Deger Döndüren Keywords
    ${isim}=    Set Variable    Yusuf
    ${sehir}=    Set Variable    Helsinki
    RETURN    ${isim}    ${sehir}