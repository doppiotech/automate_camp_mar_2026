*** Settings ***
Library     Browser     strict=${FALSE}
Library     DebugLibrary
Resource    ${CURDIR}/keywords/common/common.robot
Resource    ${CURDIR}/resources/locators/nav_bar_locator.robot
Resource    ${CURDIR}./keywords/pages/nav_bar_page.robot
Variables   ${CURDIR}./resources/locators/settings/uat/setting.yaml


# Resource    'C:\Users\doppio\Desktop\Project Structure\keywords\common\common.robot'



*** Keywords ***
# Open training web
#     Browser.New Browser         chromium        ${FALSE}
#     Browser.New context
#     Browser.New page            http://192.8.8.124:8080


# Click Person icon
#     Browser.Click           ${nav_bar_locator.btn_account}

# Click Sign in 
#     Browser.Click           ${nav_bar_locator.btn_signin}

# Click Create account
#     Browser.Click           css=a:text-is("Create account")

# Fill text Fullname
#     [Arguments]    ${fullname}
#     Browser.Fill text       css=[placeholder="Full Name"]       ${fullname}

# Fill text Mobile Phone
#     [Arguments]    ${phone}
#     Browser.Fill text       css=[type="tel"]       ${phone}

# Fill text Email
#     [Arguments]    ${email}
#     Browser.Fill text       css=[type="email"]       ${email}

# Fill text password
#     [Arguments]    ${password}
#     Browser.Fill text       css=[type="password"][data-testid="signup-password"]       ${password}

# Fill text confirm password
#     [Arguments]    ${confirm_password}
#     Browser.Fill text       css=[type="password"][data-testid="signup-confirm"]       ${confirm_password}

# Click Create account button
#     Browser.Click           css=#btn-signup

Verify user logged in with Email Display
    [Arguments]     ${mail}
    # ${display}=        Get Text          text=${mail}
    # Should Be Equal    ${mail} 

    ${text} =    Get Text        text=${mail}   ==   ${mail}     







*** Test Cases ***
TC_001
    Open training web
    Click Person icon
    Click Sign in
    Click Create account
    Fill text Fullname           Doppio test
    Fill text Mobile Phone       0911111234
    Fill text Email              Dopptt55666@gmail.com
    Fill text password           Doppio123
    Fill text confirm password   Doppio123
    Click Create account button
    Verify user logged in with Email Display    Dopptt55666@gmail.com  
    
    