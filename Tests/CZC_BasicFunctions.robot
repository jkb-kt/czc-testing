*** Settings ***

Library  Selenium2Library
Resource  ../Resources/variables.robot
Resource  ../Resources/basicKeywords.robot
Resource  ../Resources/loginKeywords.robot

Test Setup  Open main page
Test Teardown  Close all browsers

*** Test Cases ***

Check mainpage loading

    [Documentation]  TC 1

    Check all mainpage items

Search product and check results

    [Documentation]  TC 2

    Search product  Apple iPhone 5s
    Check search result page

Select category from menu and check results

    [Documentation]  TC 3

    Select category wireless mouse from menu
    Check wireless mouse page

Product ordering

    [Documentation]  TC 4

    Select category wireless mouse from menu
    Order from the cheapest
    Check cheapest ordering
    Order from the most expensive
    check expensive ordering
    


Add product to the cart
    [Documentation]    TC 7_a
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    Add to cart
    Check cart
    
Add product to the cart as a logged user
    [Documentation]    TC 7_b    
    Login with username and password
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    Add to cart
    Check cart
    Set number of products

Login success
    [Documentation]    TC 10
    
    Login with username and password
    
    
Login failed
    [Documentation]    TC 11
    
    Login with wrong username and password
    



Find product and add comment to discussion
    [Documentation]    TC 13
    Login with username and password
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    Add comment to discussion

Mark product as a favourite
    [Documentation]    TC 14  
    Login with username and password
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    Add to favourite
    Check favourite  
    Clear favourite
    
Login and successful sign out
    [Documentation]    TC 15
    
    Login with username and password
    Successful signout

Add product question
    [Documentation]    TC 16
    Login with username and password
    Add contact form
    
Find last comment
    [Documentation]    TC 17
    Login with username and password
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    




