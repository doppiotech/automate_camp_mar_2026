*** Settings ***
Library      Browser              strict=${FALSE}
Library      DebugLibrary
Library      String

#common
Resource     ${CURDIR}/../keywords/common/common.robot

#locator
Resource     ${CURDIR}/../resources/locators/nav_bar_locator.robot
Resource     ${CURDIR}/../resources/locators/sign_in_page.robot
Resource     ${CURDIR}/../resources/locators/create_account_locator.robot

#page
Resource     ${CURDIR}/../keywords/pages/nav_bar_page.robot
Resource     ${CURDIR}/../keywords/pages/sign_in_page.robot
Resource     ${CURDIR}/../keywords/pages/create_account_page.robot

#setting
Variables    ${CURDIR}/../resources/settings/uat/setting.yaml

#translation
Variables    ${CURDIR}/../resources/translation/${LANG}.yaml

#features
Resource    ${CURDIR}/../keywords/features/create_account_feature.robot