*** Keywords ***
Input all fill create account
    [Documentation]         input fullname, phone, email, password
    [Arguments]         ${full_name}    ${phone}    ${email}    ${password}     ${confirm_password}
    create_account_page.Fill Full Name                  Full_name=${full_name}
    create_account_page.Fill Mobile Phone               Phone=${phone}
    create_account_page.Fill Email                      Email=${email} 
    create_account_page.Fill Password                   Password=${password}
    create_account_page.Fill Confirm Password           Confirm_Password=${confirm_password}