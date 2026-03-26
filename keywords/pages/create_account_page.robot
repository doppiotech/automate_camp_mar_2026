*** Keywords ***
Fill full name 
    [Arguments]     ${Full_name}
    Browser.Fill text       ${create_account_locator.txt_fullname}        ${Full_name}

Fill mobile phone 
    [Arguments]     ${Phone}
    Browser.Fill text       ${create_account_locator.txt_phone}           ${Phone}

Fill email
    [Arguments]     ${Email}
    Browser.Fill text       ${create_account_locator.txt_email}            ${Email}

Fill password
    [Arguments]     ${Password}
    Browser.Fill text       ${create_account_locator.txt_password}         ${Password}

Fill confirm password
    [Arguments]     ${Confirm_Password}
    Browser.Fill text       ${create_account_locator.txt_confirm_password}         ${Confirm_Password}

Click at create account
    Browser.Click           ${create_account_locator.btn_submit_account} 

Verify user logged
    [Arguments]     ${Email}
    ${actual_email}=    Browser.Get text    ${create_account_locator.lbl_verify_account}  ==  ${Email}