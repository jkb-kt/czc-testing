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
    



Login success
    [Documentation]    TC 10
    
    Login with username and password
    
    
Login failed
    [Documentation]    TC 11
    
    Login with wrong username and password
    


Login and successful sign out
    [Documentation]    TC 15
    
    Login with username and password
    Successful signout

Find product and add comment to discussion
    [Documentation]    TC 13
    Login with username and password
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    Add comment to discussion
     
Add product question
    [Documentation]    TC 16
    Login with username and password
    Add contact form
    
Find last comment
    [Documentation]    TC 17
    Login with username and password
    Search product  Apple iPhone 6s
    Click element    ${iphone6}
    




