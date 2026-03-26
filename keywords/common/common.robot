*** Keywords ***
Open browser
    Browser.New Browser    headless=False
    Browser.New Context
    Browser.Set Browser Timeout    20s
    Browser.New Page    ${WEBSITE_URL}      wait_until=domcontentloaded

Generate random email
    ${random_string}=    String.Generate Random String    8    [LETTERS]
    RETURN    ${random_string}@mail.com

Click when element for ready
    [Arguments]    ${locator}
    Browser.Wait For Elements State    ${locator}
    Browser.Click    ${locator}