*** Settings ***
Library     Browser     strict=${FALSE}
Library     String
Library     DebugLibrary

# common
Resource    ${CURDIR}/../keywords/common/common.robot

# pages
Resource    ${CURDIR}/../keywords/pages/nav_bar_page.robot
Resource    ${CURDIR}/../keywords/pages/sign_in_page.robot
Resource    ${CURDIR}/../keywords/pages/sign_up_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

# locators
Resource    ${CURDIR}/../resources/locators/nav_bar_locator.robot
Resource    ${CURDIR}/../resources/locators/sign_in_locator.robot
Resource    ${CURDIR}/../resources/locators/sign_up_locator.robot
Resource    ${CURDIR}/../resources/locators/product_locator.robot

#Setting
Variables    ${CURDIR}/../resources/settings/${ENV}/setting.yaml

#translation
Variables    ${CURDIR}/../resources/translation/${LANG}.yaml

# feature
Resource    ${CURDIR}/../keywords/features/create_account_feature.robot