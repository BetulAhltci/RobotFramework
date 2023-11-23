*** Settings ***
#Python dosyalarını cagırmak için Library kullanılır
Library    customLib.py
#Robot framework dosyalarını  kullanmak için Resourse kullanılır
Resource    reusableKeywords.resource
#python ile olusturulan locate dosyası Variables ile cagırılır
Variables    Locatler.py


*** Variables ***
#

*** Test Cases ***
Test01
    ${SayilarinToplami}=    Sayilari Topla    40    50
    Log To Console    ${SayilarinToplami}

    #Sayilari Topla Ve Consola Yaz    44    60
    Yusufun keywordu    30    60

    Ekrana merhaba de
    Log To Console    ${uyelikBtn}
    



*** Keywords ***