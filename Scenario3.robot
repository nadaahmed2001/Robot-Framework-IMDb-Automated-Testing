*** Settings ***
Library           SeleniumLibrary
Library           Collections
Library           String

*** Variables ***
${SleepTime}      2

*** Test Cases ***
Scenario3
    Open Browser    https://www.imdb.com/    Chrome
    Maximize Browser Window
    Click Element    xpath=/html/body/div[2]/nav/div[2]/div[1]/form/div[1]/div/label
    Sleep    ${SleepTime}
    Click Link    Advanced Search
    Click Element    xpath=//*[@id="main"]/div[2]/div[1]/a
    Click Element    id=title_type-1
    Click Element    id=genres-1
    Input Text    name=release_date-min    2010
    Input Text    name=release_date-max    2020
    Sleep    ${SleepTime}
    Click Button    xpath=//*[@id="main"]/p[3]/button
    Click Link    User Rating
    @{rateBars}=    Get WebElements    class:ratings-bar
    @{originalRateValues}=    Create List
    FOR    ${rateBar}    IN    @{rateBars}
        ${rateValue}=    Get Text    ${rateBar}
        ${rateValue}=    Split String    ${rateValue}
        ${rateValue}=    Convert To number    ${rateValue[0]}
        Log to Console    ${rateValue}
        Append To List    ${originalRateValues}    ${rateValue}
    END
    @{copiedRateValue}=    Copy List    ${originalRateValues}
    Sort List    ${copiedRateValue}
    Reverse List    ${copiedRateValue}
    Lists Should Be Equal    ${originalRateValues}    ${copiedRateValue}
    FOR    ${rateValue}    IN    @{originalRateValues}
        Log    ${rateValue}
    END
    Close Browser
