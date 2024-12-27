*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
I navigate to the login page
    [Arguments]    ${URL}
    Go To    ${URL}

Input correct credentials
   [Arguments]    ${USERNAME}    ${PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME} 
    Input Text    id=password    ${PASSWORD}

I click on the Login Button
  Click Button    id=login-button

I am able view the home page
  ${location}    Get Location
  Should Be Equal    ${location}    https://www.saucedemo.com/inventory.html

Input credentials no Password
    [Arguments]    ${USERNAME}
  Wait Until Element Is Visible    id=user-name
  Input Text    id=user-name    ${USERNAME} 

Input credentials no Username
    [Arguments]    ${PASSWORD}
   Wait Until Element Is Visible    id=user-name
    Input Text    id=password    ${PASSWORD}

Input Wrong Credentials
   Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    xxxx
    Input Text    id=password    55555