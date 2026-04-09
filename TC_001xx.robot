*** Settings ***
Library     Browser     auto_closing_level=TEST     timeout=30s     strict=${FALSE}     run_on_failure=Take screenshot \ filename=EMBED

***Keywords***
Open training website
    [Arguments]     ${url}=${TRAINING_URL}
    Browser.New browser         headless=${FALSE}       args=["--start-maximized"]
    Browser.New context         viewport=${NONE}
    Browser.New page            url=${url}

*** Variables ***
${TRAINING_URL}         http://192.8.8.124:8080

*** Test Cases ***
Locator Assignment Demo_2
    [Tags]      css_test_camp
    Open training website

