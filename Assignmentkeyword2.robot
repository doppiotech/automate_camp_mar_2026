# *** Settings ***
# Library      Browser              strict=${FALSE}
# Library      DebugLibrary
# Library      String
# Resource     ${CURDIR}/keywords/common/common.robot
# Resource     ${CURDIR}/resources/locators/nav_bar_locator.robot
# Resource     ${CURDIR}/keywords/pages/nav_bar_page.robot
# Variables    ${CURDIR}./resources/settings/uat/setting.yaml
# Resource     C:\Users\Chutikarn.a\Desktop\project structure\keywords\common\common.robot

*** Variables ***
# ${URL}                  http://192.8.8.124:8080
# ${valid_fullname}       chutikarn Aomsomsuey
# ${valid_mobile}         0812345678
# ${valid_email}          chutikarn.a11@doppiotech.com
# ${valid_pwd}            Noey1234
# ${valid_confirmpwd}     Noey1234


*** Keywords ***
# Open Web
#     Browser.New Browser     Chromium     ${FALSE}                 
#     Browser.New Page        ${URL}

# Click profile icon
#     Browser.Click        ${nav_bar_locator.btn_account}

# Click sign in
#     Browser.Click        ${nav_bar_locator.btn_signin}

# Click create account button
#     Browser.Click        [href="/signup"]

Input Full Name
    [Arguments]    ${fullname}
    Browser.Fill Text    css=input[placeholder="Full Name"]    ${fullname}

Input Mobile phone
    [Arguments]    ${mobile} 
    Browser.Fill Text    css=input[type="tel"]      ${mobile} 

Input Email
    [Arguments]    ${email}
    Browser.Fill Text    css=input[type="email"]    ${email}

Input Password
    [Arguments]    ${password}
    Browser.Fill Text    css=input[type="password"]    ${password}

Input Confirm Password
    [Arguments]    ${confirmpassword}
    Browser.Fill Text    css=input[type="password"] >> nth =1    ${confirmpassword}

Click create account
    Browser.Click        css=#btn-signup

Verify User logged in
    [Arguments]    ${verifyemail}
    ${locator_email}    Set Variable    css=#btn-account span:text-is("***email***")
    ${locator}    String.Replace String    string=${locator_email}    search_for=***email***    replace_with=${verifyemail}
    # Browser.Get Text     ${locator}   ==    ${verifyemail}

    Browser.Wait For Elements State    selector=${locator}

# span:text-is("${verifyemail}")

# *** Test Cases ***
# TC Basickeywords1
#     common.Open Web
#     Click profile icon
#     Click sign in
#     Click create account button
#     Input Full Name                     fullname=${valid_fullname}
#     Input Mobile phone                  mobile=${valid_mobile}
#     Input Email                         email=${valid_email}
#     Input Password                      password=${valid_pwd}
#     Input Confirm Password              confirmpassword=${valid_confirmpwd}
#     Click create account
#     Verify User logged in               verifyemail=${valid_email}
    # Debug