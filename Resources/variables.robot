*** Variables ***
${search_input}  //input[@id="fulltext"]
${search_button}  //input[@id="fulltextSubmit"]
@{mainpage_labels}  Pobočky  Akce  Služby  Články  přihlášení
@{mainpage_elements}  //input[@id="fulltext"]  //input[@id="fulltextSubmit"]  //a[@id="logo"]  //div[@id="main-menu"]
                    ...  //div[@id="main-banners-homepage-box"]
@{resultpage_labels}  Cena  Dostupnost  Stav zboží  Štítky  Vyhledávání  Výrobce
@{resultpage_elements}  //button[contains(text(),"Podrobné filtrování")]
                    ... //ul[contains(@class,"order-by")]
${menu_fifth}  //div[@class="dep"][5]
${wireless_mouse_label}  //a[contains(text(),"Bezdrátové")]
@{categorypage_labels}  Příslušenství  Myši  Bezdrátové
                        ... Bezdrátové myši  Doporučované produkty  Bezdrátová herní myš
@{categorypage_elements}  //button[@title="Přidat zboží do košíku"]
${order_by_cheapest}  //a[contains(text(),"Nejlevnější")]
${cheapest_active}    //a[@class="active" and contains(text(),"Nejlevnější")]
${order_by_expensive}  //a[contains(text(),"Nejdražší")]
${expensive_active}  //a[@class="active" and contains(text(),"Nejlevnější")]
${username}    JanNovak00
${password}    Nejakytajnyheslo
${login}    id=login
${username_input}    id=frm-name
${password_input}    id=frm-password-popup
${submit}    xpath=//*[contains(@class,"submit")]
${discussion}    xpath=//*[@id="pd-discussion-content"]/h2/a
${discussion_order}    xpath=//*[@id="content"]/div[1]/div[1]/div/span/span[1]
${logged}    id=logged-user
${username_wrong}    spatnejmeno
${password_wrong}    spatneheslo
${wrong_login}    xpath=//*[contains(@class,"input-error")]
${sign_out}    xpath=//*[contains(@class,"usr-logout")]
${iphone6}    xpath=//*[@id="tiles"]/div[1]/div[1]/div[2]/div[1]/h5/a
${enter_discus}    xpath=//*[@id="latestActiveDiscussionThreadsContainer"]/div/div/div[2]/a[3]
${discus_name}    Tema01
${discus_content}    Iphone6s
${discus_name_element}    xpath=//*[@id="frm-title"]
${discus_content_element}    xpath=//*[@id="frm-content"] 
${discus_confirm}    xpath=//*[@id="popup-new-discussion-thread"]/div/form/div[5]/button[2]
${contact_element}    xpath=//*[@id="footer-links"]/div[1]/div[2]/div[1]/ul/li[1]/a
${contact_product_element}    xpath=//*[@id="content"]/div[2]/div[2]/ul/li[3]/a
${message_element}    xpath=//*[@id="frm-message"]
${message}    Dobry den, budete prodavat i vice zbozi? 
${message_confirm}    xpath=//*[@id="contact-form"]/div[4]/button
${cart_element}    xpath=//*[@id="product-price-and-delivery-section"]/div[1]/button/span[1]
${favourite_element}    xpath=//*[@id="pd-controls-favorite"]/a/i
${to_cart_element}    xpath=//*[@id="popup-buy-mode"]/div/div[3]/a
@{cart_strings}    198386
${check_favourite}    id=favorite-info
@{favourite_strings}    Apple iPhone 6s 32GB
@{delete_favourite}    xpath=//*[@id="upl-products"]/div[1]/div/div[5]/div[2]/a
