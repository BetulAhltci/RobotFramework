*** Settings ***


*** Variables ***
${isim}=    Yusuf
@{liste}=    Yusuf    Ahmet    Mehmet    Veli
&{MyDict}=    name=Yusuf    yas=39    sehir=Helsinki
${sayı1}=    0
${sayı2}=    20

*** Test Cases ***
Test01
    WHILE    ${sayı1}<=${sayı2}

        Log To Console    ${sayı1}
        ${sayı1}=    Evaluate    ${sayı1}+1
    END

    FOR    ${element}    IN    @{liste}
        Log To Console    ${element}
        
    END

    FOR    ${index}    ${element}    IN ENUMERATE    @{liste}
        Log To Console   ${index}: ${element}
        
    END



*** Keywords ***