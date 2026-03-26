***Keywords***
Input all fill create account
    [Documentation]     input fullname, phone number
    [Arguments]     ${Full_name}    ${phone}    ${email}    ${password}     ${confirm_password}
    create_account_page.Fill text Fullname              Fullname=${Full_name}
    create_account_page.Fill text Mobile Phone          phone=${Phone}
    create_account_page.Fill text Email                 email=${Email}
    create_account_page.Fill text password              password=${Password}
    create_account_page.Fill text confirm password      confirm_password=${confirm_password}