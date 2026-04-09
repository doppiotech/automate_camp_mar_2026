*** Keywords ***
Click profile icon
    Browser.Click    ${nav_bar_locator.btn_account}

Click Sign In button
    Browser.Click    ${nav_bar_locator.btn_signin}

Verify account
    Browser.Wait For Elements State    ${nav_bar_locator.account_email}

Fill product name to search
    [Arguments]    ${Product}
    Browser.Fill Text    ${nav_bar_locator.txt_search}    ${Product}

# Wait for search suggestion
#     Browser.Wait For Elements State    ${nav_bar_locator.search_suggestion}

Click search suggestion
    common.Click when element for ready    locator=${nav_bar_locator.search_suggestion}



# Click search button
#     Click    ${nav_bar_locator.btn_search}