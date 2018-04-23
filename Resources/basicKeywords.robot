*** Settings ***
Library  Selenium2Library

*** Keywords ***

Open main page
    [Documentation]  Open browser and new page
    Open browser  http://www.czc.cz  chrome


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
  
Add to cart
    [Documentation]    Add to cart
    
    Wait until page contains element    ${cart_element}
    Click element    ${cart_element}

Delete from cart

    [Documentation]    Delete item from cart

    click element  ${deleteItem}


Add item count

    [Documentation]    Increase count of product

    click element  ${addItemCnt}


Back to mainpage
    [Documentation]  Go to mainpage

    click element  ${logo}
    
    
Check cart 
    [Documentation]    Check cart
    
    Wait until page contains element    ${to_cart_element}
    Click element    ${to_cart_element}
    check strings on page  @{cart_strings}

Add to favourite
    [Documentation]    Add to favourite
    
    Wait until page contains element    ${favourite_element}
    Click element    ${favourite_element}

Check favourite  
    [Documentation]    Check favourite

    Click element    ${check_favourite}
    check strings on page  @{favourite_strings}
    
Clear favourite    
    [Documentation]    Clear favourite

    Click element    @{delete_favourite}  
    
Set number of products 
    [Documentation]    Set number of products

    Press key     ${quantity_input}   \\8
    Input text    ${quantity_input}    ${quantity_number_del}
    Press key     ${quantity_input}   \\13
    
Check all mainpage categories

    [Documentation]    Check if mainpage contains categories
    Check strings on page    @{category_set}
    
Open product
    
    [Documentation]    Open product
    Search product    ${product_name}
    Click element    ${product_link}
    
Check product sections
    
    [Documentation]    Check if product page contains sections
    Open product
    Wait Until Page Contains Element    ${product_heading}
    Check elements on page    @{product_sections}

Click and check book at store

    [Documentation]  Check if the button "Book at store" is ok

    click element  ${bookStore}
    Check strings on page  @{booking_form}


Rate product
    
    [Documentation]    Rate product using stars
    Open product
    Wait Until Page Contains Element    ${product_rating}    
    Click element    ${product_rating}
    Wait Until Page Contains Element    ${product_stars}
    Click Element At Coordinates    ${product_stars}    145    10
    Click element    ${product_save_rating}
