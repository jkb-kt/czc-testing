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







