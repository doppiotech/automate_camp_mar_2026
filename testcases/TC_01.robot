*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Variables   ${CURDIR}/../resources/testdata/${ENV}/TC_001.yaml

*** Test Cases ***
Basic Keywords 2 (part1)
    ${email}    common.Generate random email        
    common.Open Local Website
    nav_bar_page.Click Profile Icon
    nav_bar_page.Click Sign In   
    sign_in_page.Click Create Account button
    create_account_feature.Input all fill create account
    ...     full_name=${Testcase_01.full_name}
    ...     phone=${Testcase_01.phone}
    ...     email=${email}
    ...     password=${Testcase_01.password} 
    ...     confirm_password=${Testcase_01.confirm_password}
    create_account_page.Click at Create Account
    sleep   1s
    Search Product              product=${Testcase_01.product}
    Click search button
    Click View Product
    Check and increase quantity    
    Verify product title       ${Testcase_01.product}
    # Verify available amount     ${available} < 3500