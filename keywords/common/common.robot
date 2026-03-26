*** Keywords ***
Open Web
    Browser.New Browser     Chromium     ${FALSE}                 
    Browser.New Page        ${URL}

Generate random email
    ${random_email}    String.Generate random string
    RETURN    ${random_email}@gamil.com