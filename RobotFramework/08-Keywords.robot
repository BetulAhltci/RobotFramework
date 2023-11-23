*** Settings ***
Library    Collections

*** Variables ***

*** Test Cases ***
Test01
    ${sayi}=    Set Variable    100
    @{listem}=    Create List    2    4    6    8    10
    Append To List    ${listem}    ${sayi}
    Sayilari İkiye Bol   ${listem}


*** Keywords ***
Sayilari İkiye Bol
    [Arguments]    ${liste}
    FOR    ${e}    IN    @{liste}
        ${sonuc}=    Evaluate    ${e}/2
        Log To Console    ${sonuc}
    END