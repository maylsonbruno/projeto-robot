*** Settings ***
Library    SeleniumLibrary
Variables     ../variables/variables.py

*** Keywords ***
I navigate to the login page
    Go To    ${URL_DATA["baseUrl"]} 

Input correct credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correctData"]["username"]} 
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}

I click on the Login Button
  Click Button    id=login-button

I am able view the home page
  ${location}    Get Location
  ${full_url}    Catenate  SEPARATOR=      ${URL_DATA["baseUrl"]}   ${URL_DATA["inventoryUrl"]}
  Should Be Equal    ${location}    ${full_url} 

Input credentials no Password 
  Wait Until Element Is Visible    id=user-name
  Input Text    id=user-name   ${LOGIN_DATA["correctData"]["username"]} 

Input credentials no Username
   Wait Until Element Is Visible    id=user-name
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}

Input Wrong Credentials
   Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["wrongData"]["username"]} 
    Input Text    id=password    ${LOGIN_DATA["wrongData"]["password"]}
  
  
I am able to see the expected error message for No Credentials
    Wait Until Element Contains    class=error-message-container   ${ERROR_MENSAGE["NoCredentials"]}

I am able to see the expected error message for No Username
    Wait Until Element Contains    class=error-message-container   ${ERROR_MENSAGE["NoUserName"]}

I am able to see the expected error message for No Password
    Wait Until Element Contains    class=error-message-container   ${ERROR_MENSAGE["NoPassword"]}

I am able to see the expected error message for Wrong Credentials
    Wait Until Element Contains    class=error-message-container   ${ERROR_MENSAGE["wrongCredentials"]}