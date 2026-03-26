*** Keywords ***
Input Full Name
    [Arguments]    ${fullname}
    Browser.Fill Text    ${create_account_locator.txt_fullname}    ${fullname}

Input Mobile phone
    [Arguments]    ${mobile} 
    Browser.Fill Text    ${create_account_locator.txt_mobile}      ${mobile} 

Input Email
    [Arguments]    ${email}
    Browser.Fill Text    ${create_account_locator.txt_email}    ${email}

Input Password
    [Arguments]    ${password}
    Browser.Fill Text    ${create_account_locator.txt_password}    ${password}

Input Confirm Password
    [Arguments]    ${confirmpassword}
    Browser.Fill Text    selector=${create_account_locator.txt_confirm_password}    txt=${confirmpassword}

Click create account
    Browser.Click        ${create_account_locator.btn_create_account}

Verify User logged in
    [Arguments]    ${verifyemail}
    ${locator}    String.Replace String    string=${create_account_locator.lbl_verify_account}   search_for=***email***    replace_with=${verifyemail}
    Browser.Wait For Elements State    selector=${locator}