*** Settings ***
Resource    ../resources/checkout_keywords.resource
Suite Setup    Open Browser  browser=chrome

*** Test Cases ***
Successful Login
    I navigate to the login page     
    Input correct credentials    
    I click on the Login Button
    I am able view the home page  
    Sleep    1


Choice an product the List
   I Choice an product
   I click on the Car Button
   I am able view Car Page
   Sleep    1

Checkout on the product
    I click on the Checkout Button
     Sleep    1
    I am able view Checkout Page
     Sleep    1
    I Fill Data the User
     Sleep    1
    I click on the Continue Button
     Sleep    1
    I am able view Payment Page
     Sleep    1
    I click on the Finish Button
     Sleep    1
    I am able view Checkout Complete Page
     

    