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
    search_product_page.Search product              product=${Testcase_01.product}
    search_product_page.Click search button
    search_product_page.Click view product
    search_product_page.Check and increase quantity    
    search_product_page.Verify product title       ${Testcase_01.product}
    search_product_page.Verify available amount    
    search_product_page.Verify total price          ${Testcase_01.total}