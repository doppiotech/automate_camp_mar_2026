*** Keywords ***
Input all fill create account
    [Documentation]    input fullname,phone number,email,password,confirm password
    [Arguments]        ${fullname}    ${mobile}    ${email}    ${password}    ${confirmpassword}
    create_account_page.Input Full Name                     fullname=${fullname}
    create_account_page.Input Mobile phone                  mobile=${mobile}
    create_account_page.Input Email                         email=${email}
    create_account_page.Input Password                      password=${password}
    create_account_page.Input Confirm Password              confirmpassword=${confirmpassword}