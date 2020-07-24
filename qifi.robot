*** Settings ***
Resource    keywords.robot
Test Setup    เปิด google chrome browser เข้า qifi.org 
Test Template    gen qrcode wifi
Test Teardown    ปิด browser


*** Test Cases ***      SSID            KEY   
Generate QRcode Wifi    ddddd           123456    
