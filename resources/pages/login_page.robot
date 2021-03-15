*** Settings ***
Documentation       Login Page Actions


*** Variables ***
${EMAIL_INPUT}              id=email
${PASSWORD_INPUT}           id=passwd
${LOGIN_BUTTON}             id=SubmitLogin
${LOGIN_FLASH_ALERT}        css=.alert.alert-danger>ol>li


*** Keywords ***
Open Login Page
    New page            ${WEBSITE_URL}?controller=my-account


Login With
    [Arguments]     ${email_arg}        ${password_arg}

    Fill Text       ${EMAIL_INPUT}      ${email_arg}
    Fill Text       ${PASSWORD_INPUT}   ${password_arg}

    Click           ${LOGIN_BUTTON} 


Alert Should Be
    [Arguments]     ${expect_message_arg}
    
    Get Text        ${LOGIN_FLASH_ALERT}      should be      ${expect_message_arg}
