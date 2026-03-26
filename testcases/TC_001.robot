*** Settings ***
Resource          ${CURDIR}/../resources/import.robot
Variables         ${CURDIR}/../resources/testdata/uat/TC_001.yaml

*** Test Cases ***
TC Basickeywords1
    common.Open Web
    nav_bar_page.Click profile icon
    nav_bar_page.Click sign in
    sign_in_page.Click create account button
    create_account_feature.Input all fill create account
    ...    fullname=${TC_001.valid_fullname}
    ...    mobile=${TC_001.valid_mobile}
    ...    email=${TC_001.valid_email}
    ...    password=${TC_001.valid_pwd}
    ...    confirmpassword=${TC_001.valid_confirmpwd}
    create_account_page.Click create account
    create_account_page.Verify User logged in               verifyemail=${TC_001.valid_email}


    