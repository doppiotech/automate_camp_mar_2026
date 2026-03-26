*** Keywords ***
Fill Fullname
    [Arguments]    ${Fullname}
    Fill Text    ${sign_up.fullname}    ${Fullname}

Fill Mobile
    [Arguments]    ${Mobile}
    Fill Text    ${sign_up.mobile}    ${Mobile}

Fill Email
    [Arguments]    ${Email}
    Fill Text    ${sign_up.email}    ${Email}

Fill Password
    [Arguments]    ${Password}
    Fill Text    ${sign_up.password}    ${Password}

Fill Confirm Password
    [Arguments]    ${ConfirmPassword}
    Fill Text    ${sign_up.confirm_password}    ${ConfirmPassword}

Click Create Account button
    Click    ${sign_up.create_account_button}