*** Keywords ***
Input all fill create account
    [Documentation]         input fullname, phone, email, password
    [Arguments]         ${full_name}    ${phone}    ${email}    ${password}     ${confirm_password}
    create_account_page.Fill full name                  Full_name=${full_name}
    create_account_page.Fill mobile phone               Phone=${phone}
    create_account_page.Fill email                      Email=${email} 
    create_account_page.Fill password                   Password=${password}
    create_account_page.Fill confirm password           Confirm_Password=${confirm_password}