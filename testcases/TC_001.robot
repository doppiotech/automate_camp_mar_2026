*** Settings ***
Resource          ${CURDIR}/../resources/import.robot
Variables         ${CURDIR}/../resources/testdata/uat/TC_001.yaml

*** Test Cases ***
TC001 - Register
    ${email}          common.Generate random email
    common.Open Web
    nav_bar_page.Click profile icon
    nav_bar_page.Click sign in
    sign_in_page.Click create account button
    create_account_feature.Input all fill create account
    ...    fullname=${TC_001.valid_fullname}
    ...    mobile=${TC_001.valid_mobile}
    ...    email=${email}
    ...    password=${TC_001.valid_pwd}
    ...    confirmpassword=${TC_001.valid_confirmpwd}
    create_account_page.Click create account
    # create_account_page.Verify User logged in               verifyemail=${TC_001.valid_email}
    search_product_page.Input product name
    ...    productname=${TC_001.product_name}
    Sleep      1s
    search_product_page.Click search icon
    search_product_page.Click view detail product
    detail_product_page.Adjust product quantity
    detail_product_page.Verify product name     product=${TC_001.product_name}
    detail_product_page.Verify avaliable amount
    detail_product_page.Verify total price



    