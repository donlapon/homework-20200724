*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://qifi.org

*** Keywords ***
gen qrcode wifi
    [Arguments]    ${SSID}    ${KEY}
    ใส่ SSID    ${SSID}
    ใส่ Key    ${KEY}
    คลิก Generate!
    Check QR code

เปิด google chrome browser เข้า qifi.org
    Open Browser    ${URL}    chrome
ใส่ SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}
ใส่ Key
    [Arguments]    ${KEY}
    Input Text    key    ${KEY}
คลิก Generate!
    Click Button    generate
Check QR code
    Page Should Contain Element    qrcode
ปิด browser
    Close Browser