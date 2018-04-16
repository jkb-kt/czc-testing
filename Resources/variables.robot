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
${logged}    id=logged-user
${username_wrong}    spatnejmeno
${password_wrong}    spatneheslo
${wrong_login}    xpath=//*[contains(@class,"input-error")]
${sign_out}    xpath=//*[contains(@class,"usr-logout")]