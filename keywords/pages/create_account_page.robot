***Keywords***
Fill text Fullname
    [Arguments]     ${Full_name}
    Browser.Fill text   ${create_account_locator.txt_fullname}      ${Full_name}

Fill text Mobile Phone
    [Arguments]    ${phone}
    Browser.Fill text    ${create_account_locator.txt_phone}       ${phone}

Fill text Email
    [Arguments]    ${email}
    Browser.Fill text    ${create_account_locator.txt_email}       ${email}

Fill text password
    [Arguments]    ${password}
    Browser.Fill text    ${create_account_locator.txt_password}       ${password}

Fill text confirm password
    [Arguments]    ${confirm_password}
    Browser.Fill text     ${create_account_locator.txt_confirm password}      ${confirm_password}

Click Create account button
    Browser.Click         ${create_account_locator.btn_Create account}

# Verify user logged in with Email Display
#     [Arguments]     ${mail}
#     ${text} =    Get Text        text=${mail}   ==   ${mail}  