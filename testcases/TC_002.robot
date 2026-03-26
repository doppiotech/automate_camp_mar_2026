***Settings***
Resource    ${CURDIR}/../resources/import.robot
Variables   ${CURDIR}/../resources/testdata/${ENV}/TC_002.yaml


*** Test Cases ***
TC_002
    common.Open training web
    nav_bar_page.Click Person icon
    nav_bar_page.Click Sign in
    Sign_in_page.Click Create account
    create_account_feature.Input all fill create account
    ...     Full_name=${TC_001.Full_name}
    ...     phone=${TC_001.Phone}
    ...     email=${TC_001.Email}
    ...     password=${TC_001.Password}
    ...     confirm_password=${TC_001.Password}
    create_account_page.Click Create account button
    # create_account_page.Verify user logged in with Email Display
    Debug
    search_product_page.Search Product          product=${TC_002.Product} 
    search_product_page.Click icon Search
    Click View Detail icon
         