*** Settings ***
Documentation       Product Page Tests

Resource            ../resources/base.robot

Test Setup          Start Test
Test Teardown       Take Screenshot


*** Test Cases ***
Search And Verify Product Details
    [Tags]      smoke
    Open Login Page
    Login With  michael_user@test.com   12345678
    Logout Link Should Be Visible
    Search For   Dress
    Verify That a Product Page Is Open
    Choose The Item      Printed Chiffon Dress
    Verify That The Product Details Page is Displayed
