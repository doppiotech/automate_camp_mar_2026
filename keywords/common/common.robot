*** Keywords ***
Open Local Website
    Browser.New browser    chromium    headless=FALSE
    Browser.New page       ${URL}

Generate random email
    ${random_email}     String.Generate random string
    RETURN      ${random_email}@gmail.com