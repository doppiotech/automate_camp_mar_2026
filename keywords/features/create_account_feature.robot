*** Keywords ***
Input all fill create account
    [Documentation]    input fullname,phone number,email,password,confirm password
    [Arguments]        ${fullname}    ${mobile}    ${email}    ${password}    ${confirmpassword}
    create_account_page.Input full name                     fullname=${fullname}
    create_account_page.Input mobile phone                  mobile=${mobile}
    create_account_page.Input email                         email=${email}
    create_account_page.Input password                      password=${password}
    create_account_page.Input confirm password              confirmpassword=${confirmpassword}