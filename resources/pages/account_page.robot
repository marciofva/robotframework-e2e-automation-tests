*** Settings ***
Documentation       Logged Area Actions


*** Variables ***
${LOGOUT_LINK}              css=.header_user_info>a[href*=logout]
${SEARCH_INPUT}             id=search_query_top
${SEARCH_BUTTON}            css=button[name="submit_search"]
${SEARCH_RESULT_HEADING}    xpath=//h1[contains(@class, page-heading)]//span[contains(@class,lighter)]
${SEARCH_RESULT_VALUE}      css=.page-heading .lighter


*** Keywords ***
Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}   visible     10


Search For
    [Arguments]     ${search_arg}     

    Fill Text           id=search_query_top     ${search_arg}
    Click               ${SEARCH_BUTTON}
