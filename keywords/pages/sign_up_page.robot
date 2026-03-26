*** Keywords ***
Fill Fullname
    [Arguments]    ${Fullname}
    Browser.Fill Text    ${sign_up.fullname}    ${Fullname}

Fill Mobile
    [Arguments]    ${Mobile}
    Browser.Fill Text    ${sign_up.mobile}    ${Mobile}

Fill Email
    [Arguments]    ${Email}
    Browser.Fill Text    ${sign_up.email}    ${Email}

Fill Password
    [Arguments]    ${Password}
    Browser.Fill Text    ${sign_up.password}    ${Password}

Fill Confirm Password
    [Arguments]    ${ConfirmPassword}
    Browser.Fill Text    ${sign_up.confirm_password}    ${ConfirmPassword}

Click Create Account button
    Browser.Click    ${sign_up.create_account_button}