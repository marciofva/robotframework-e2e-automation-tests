*** Settings ***
Documentation       Product Page Actions


*** Variables ***
${ADD_CARD_BUTTON}          id=add_to_cart


*** Keywords ***
Verify that The Product Details Page is Displayed
    Get Text                    ${ADD_CARD_BUTTON}  equal   Add to cart
    Wait For Elements State     ${ADD_CARD_BUTTON}  visible
