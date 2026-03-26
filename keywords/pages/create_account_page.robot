*** Keywords ***
Fill Full Name 
    [Arguments]     ${Full_name}
    Browser.Fill Text       ${create_account_locator.txt_fullname}        ${Full_name}

Fill Mobile Phone 
    [Arguments]     ${Phone}
    Browser.Fill Text       ${create_account_locator.txt_phone}           ${Phone}

Fill Email
    [Arguments]     ${Email}
    Browser.Fill Text       ${create_account_locator.txt_email}            ${Email}

Fill Password
    [Arguments]     ${Password}
    Browser.Fill Text       ${create_account_locator.txt_password}         ${Password}

Fill Confirm Password
    [Arguments]     ${Confirm_Password}
    Browser.Fill Text       ${create_account_locator.txt_confirm_password}         ${Confirm_Password}

Click at Create Account
    Click           ${create_account_locator.btn_submit_account} 

Verify user logged
    [Arguments]     ${Email}
    ${actual_email}=    Get Text    ${create_account_locator.lbl_verify_account}  ==  ${Email}