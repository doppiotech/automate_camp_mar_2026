*** Keywords ***
Open training web
    Browser.New Browser         chromium        ${FALSE}
    Browser.New context
    Browser.New page            ${URL}