*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.resource
Test Setup    Open Browser  browser=chrome

*** Variables ***
${URL}    https://www.saucedemo.com/ 
${BROWSER}    chrome
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Successful Login
    I navigate to the login page   ${URL}   
    Input correct credentials    ${USERNAME}    ${PASSWORD}
    I click on the Login Button
    I am able view the home page    

Unsuccessful Login - No credentials
    I navigate to the login page   ${URL}  
    Wait Until Element Is Visible    id=user-name
    I click on the Login Button
    Wait Until Element Contains    class=error-message-container   Epic sadface: Username is required


Unsuccessful Login - No Username
    I navigate to the login page   ${URL}  
    Input credentials no Username    ${PASSWORD}
    I click on the Login Button
    Wait Until Element Contains    class=error-message-container   Epic sadface: Username is require


Unsuccessful Login - No Password
    I navigate to the login page   ${URL}  
    Input credentials no Password    ${USERNAME}
    I click on the Login Button  
    Wait Until Element Contains    class=error-message-container   Epic sadface: Password is required

Unsuccessful Login - Wrong Credentials
    I navigate to the login page   ${URL}  
     Input Wrong Credentials
     I click on the Login Button 
    Wait Until Element Contains    class=error-message-container   Epic sadface: Username and password do not match any user in this service