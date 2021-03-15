*** Settings ***
Documentation       Login Page Tests

Resource            ../resources/base.robot

Test Setup          Start Test
Test Teardown       Close Browser


*** Test Cases ***
Login Sucessfully
    [Tags]      smoke
    Open Login Page
    Login With        michael_user@test.com        12345678
    Logout Link Should Be Visible


Invalid Email
    Open Login Page
    Login With        michael44366@test.com        12345678
    Alert Should Be     Authentication failed.      


Invalid Password
    Open Login Page
    Login With          michael_user@test.com   1
    Alert Should Be     Invalid password.  


Empty Email
    Open Login Page
    Login With          ${EMPTY}    12345678
    Alert Should Be     An email address required.


Empty Password
    Open Login Page
    Login With          michael_user@test.com   ${EMPTY}
    Alert Should Be     Password is required.
