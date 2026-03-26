*** Keywords ***
Input all field in create account form
    [Documentation]    input fullname, phone number, email, password and confirm password in create account form
    [Arguments]    ${fullname}    ${phone_number}    ${email}    ${password}    ${confirm_password}
    sign_up_page.Fill Fullname    ${fullname}
    sign_up_page.Fill Mobile    ${phone_number}
    sign_up_page.Fill Email    ${email}
    sign_up_page.Fill Password    ${password}
    sign_up_page.Fill Confirm Password    ${confirm_password}
