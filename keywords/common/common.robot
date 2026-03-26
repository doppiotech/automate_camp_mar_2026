*** Keywords ***
Open browser
    New Browser    headless=False
    New Context
    Set Browser Timeout    20s
    New Page    ${WEBSITE_URL}      wait_until=domcontentloaded

Generate random email
    ${random_string}=    Generate Random String    8    [LETTERS]
    RETURN    ${random_string}@mail.com

Click when element for ready
    [Arguments]    ${locator}
    Wait For Elements State    ${locator}
    Click    ${locator}