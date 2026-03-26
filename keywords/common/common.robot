*** Keywords ***
Open Web
    Browser.New Browser     Chromium     ${FALSE}                 
    Browser.New Page        ${URL}