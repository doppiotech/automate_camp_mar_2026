*** Keywords ***
Open Local Website
    New Browser    chromium    headless=FALSE
    New Page       ${URL}

Generate random email
    ${random_email}     String.Generate random string
    RETURN      ${random_email}@gmail.com