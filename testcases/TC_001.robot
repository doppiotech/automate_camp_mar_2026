*** Settings ***
Variables    ${CURDIR}/../resources/testdata/${ENV}/TC_001.yaml
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
Open website
    ${random_email}=    common.Generate random email
    common.Open browser
    nav_bar_page.Click profile icon
    nav_bar_page.Click Sign In button
    sign_in_page.Click create account button
    # sign_up_page.Fill Fullname  ${TC_001.Fullname}
    # sign_up_page.Fill Mobile    ${TC_001.Mobile}
    # sign_up_page.Fill Email   ${TC_001.Email}
    # sign_up_page.Fill Password  ${TC_001.Password}
    # sign_up_page.Fill Confirm Password  ${TC_001.ConfirmPassword}
    Input all field in create account form  
    ...     fullname=${TC_001.Fullname}
    ...     phone_number=${TC_001.Mobile}
    ...     email=${random_email}
    ...     password=${TC_001.Password}
    ...     confirm_password=${TC_001.ConfirmPassword}
    sign_up_page.Click Create Account button
    nav_bar_page.Verify account
    nav_bar_page.Fill product name to search  ${TC_001.Product}
    nav_bar_page.Click search suggestion
    ${stock}=    Verify Stock
    ${quantity}=    product_page.Increase Quantity    ${stock}
    product_page.Verify Product Name    ${TC_001.Product}
    product_page.Verify Stock
    product_page.Verify Total Price     ${quantity}     ${TC_001.CeramicMugPrice}

