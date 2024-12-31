*** Settings ***
Library    SeleniumLibrary
Variables     ../variables/variables.py

*** Keywords ***
I navigate to the login page
    Go To    ${URL_DATA["baseUrl"]} 


I am able view the home page
  ${location}    Get Location
  ${full_url}    Catenate  SEPARATOR=      ${URL_DATA["baseUrl"]}   ${URL_DATA["inventoryUrl"]}
  Should Be Equal    ${location}    ${full_url} 


I am able view Car Page
  ${location}    Get Location
  ${full_url}    Catenate  SEPARATOR=      ${URL_DATA["baseUrl"]}   ${URL_DATA["cartUrl"]}
  Should Be Equal    ${location}    ${full_url} 


I am able view Checkout Page
  ${location}    Get Location
  ${full_url}    Catenate  SEPARATOR=      ${URL_DATA["baseUrl"]}   ${URL_DATA["checkoutStepOne"]}
  Should Be Equal    ${location}    ${full_url} 

I am able view Payment Page
  ${location}    Get Location
  ${full_url}    Catenate  SEPARATOR=      ${URL_DATA["baseUrl"]}   ${URL_DATA["checkoutStepTwo"]}
  Should Be Equal    ${location}    ${full_url} 

I am able view Checkout Complete Page
  ${location}    Get Location
  ${full_url}    Catenate  SEPARATOR=      ${URL_DATA["baseUrl"]}   ${URL_DATA["checkoutComplete"]}
  Should Be Equal    ${location}    ${full_url} 

Input correct credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correctData"]["username"]} 
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}

I click on the Login Button
  Click Button    id=login-button

I Choice an product
    Click Element  css:[data-test='add-to-cart-sauce-labs-backpack']    

I click on the Car Button
    Click Element  css:[data-test='shopping-cart-link']

I click on the Checkout Button
  Click Element  css:[data-test='checkout']

I Fill Data the User
      Input Text     css:[data-test='firstName']    ${LOGIN_DATA["correctData"]["username"]} 
      Input Text     css:[data-test='lastName']    ${LOGIN_DATA["correctData"]["password"]}
      Input Text     css:[data-test='postalCode']    905203666

I click on the Continue Button
    Click Element    css:[data-test='continue']

I click on the Finish Button
    Click Element    css:[data-test='finish']