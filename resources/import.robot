*** Settings ***
Library     Browser  strict=${FALSE}
Library     DebugLibrary
Library     String

# common
Resource    ${CURDIR}/../keywords/common/common.robot

# locators
Resource    ${CURDIR}/../resources/locators/nav_bar_locator.robot
Resource    ${CURDIR}/../resources/locators/sign_in_locator.robot
Resource    ${CURDIR}/../resources/locators/create_account_locator.robot
Resource    ${CURDIR}/../resources/locators/search_product_locator.robot

# pages
Resource    ${CURDIR}/../keywords/pages/nav_bar_page.robot
Resource    ${CURDIR}/../keywords/pages/sign_in_page.robot
Resource    ${CURDIR}/../keywords/pages/create_account_page.robot
Resource    ${CURDIR}/../keywords/pages/search_product_page.robot

# settings
Variables   ${CURDIR}/../resources/settings/${ENV}/setting.yaml

#translation
Variables   ${CURDIR}/translation/${LANG}.yaml

#features
Resource    ${CURDIR}/../keywords/features/create_account_feature.robot