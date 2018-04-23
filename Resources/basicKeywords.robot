*** Settings ***
Library  Selenium2Library

*** Keywords ***

Open main page
    [Documentation]  Open browser and new page
    Open browser  http://www.czc.cz  chrome
    maximize browser window

Close all browsers
    [Documentation]  Close browser
    close browser

Check all mainpage items

    [Documentation]  Check if mainpage contains all neccessary elements

    check strings on page  @{mainpage_labels}
    check elements on page  @{mainpage_elements}

Search product

    [Documentation]  Fill input on mainpage and search
    [Arguments]  ${item}

    Input text     ${search_input}  ${item}
    Click element  ${search_button}

Select category wireless mouse from menu

    [Documentation]  Select category from menu

    click element  ${menu_fifth}
    wait until page contains  Bezdrátové
    click element  ${wireless_mouse_label}
    wait until page contains  Bezdrátové myši

Check wireless mouse page

    [Documentation]  Checks all elements on result page

    check strings on page  @{categorypage_labels}
    check elements on page  @{categorypage_elements}


Check search result page
    [Documentation]  Check all elements on result page

    check strings on page  @{resultpage_labels}
    check elements on page  @{resultpage_elements}

Order from the cheapest

    [Documentation]  Click on cheapest ordering
    click element  ${order_by_cheapest}

Check cheapest ordering

    [Documentation]  Check if the cheapest ordering category is active
    wait until page contains element  ${cheapest_active}

Order from the most expensive
    [Documentation]  Click on expensive ordering
    click element  ${order_by_expensive}

Check expensive ordering

    [Documentation]  Check if the expensive ordering category is active
    wait until page contains element   ${expensive_active}

Check strings on page

    [Documentation]  Check if page contains all strings defined in argument

    [Arguments]  @{string_set}
    :FOR  ${string}   IN  @{string_set}
    \   wait until page contains   ${string}

Check elements on page

    [Documentation]  Check if page contains all elements defined in argument

    [Arguments]  @{element_set}
    :FOR  ${elem}   IN  @{element_set}
    \   wait until page contains element  ${elem}

Login with username and password
    
    [Documentation]    Login success
    click element    ${login}
    wait until page contains element    ${username_input}
    input text    ${username_input}    ${username}
    input text    ${password_input}    ${password}
    click element    ${submit}
    wait until page contains element    ${logged}
    
Login with wrong username and password
    
    [Documentation]    Login fail
    click element    ${login}
    wait until page contains element    ${username_input}
    input text    ${username_input}    ${username_wrong}
    input text    ${password_input}    ${password_wrong}
    wait until page contains element    ${wrong_login}


Successful signout
    
    [Documentation]    Sign out
   
    mouse over    ${logged}
    click element    ${sign_out}

Add comment to discussion
    
    [Documentation]    Add comment
    
    Click element    ${enter_discus}
    wait until page contains element    ${discus_name_element}
    Input text    ${discus_name_element}    ${discus_name}
    Input text    ${discus_content_element}    ${discus_content}
    Click element    ${discus_confirm}

Add contact form
    
    [Documentation]    Add contact form
    
    wait until page contains element    ${contact_element}
    click element    ${contact_element}
    wait until page contains element    ${contact_product_element} 
    click element    ${contact_product_element} 
    wait until page contains element    ${message_element} 
    Input text    ${message_element} ${message}
    Click element    ${message_confirm} 
    
Find last comment
    [Documentation]    Find last comment in discussion
    
    wait until page contains element    ${discussion}
    click element    ${discussion}
    wait until page contains element    ${discussion_order}
    click element    ${discussion_order}
    