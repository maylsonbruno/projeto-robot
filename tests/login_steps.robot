*** Settings ***
Resource    ../resources/login_keywords.resource
Suite Setup    Open Browser  browser=chrome

*** Test Cases ***
Successful Login
    I navigate to the login page     
    Input correct credentials    
    I click on the Login Button
    I am able view the home page 
    Sleep    1   

Unsuccessful Login - No credentials
    I navigate to the login page   
    Wait Until Element Is Visible    id=user-name
    I click on the Login Button
    I am able to see the expected error message for No Credentials
    Sleep    1


Unsuccessful Login - No Username
    I navigate to the login page   
    Input credentials no Username    
    I click on the Login Button
    I am able to see the expected error message for No Username
    Sleep    1


Unsuccessful Login - No Password
    I navigate to the login page   
    Input credentials no Password  
    I click on the Login Button  
    I am able to see the expected error message for No Password
    Sleep    1

Unsuccessful Login - Wrong Credentials
    I navigate to the login page   
     Input Wrong Credentials
     I click on the Login Button 
   I am able to see the expected error message for Wrong Credentials