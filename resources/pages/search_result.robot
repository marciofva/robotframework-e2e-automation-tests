*** Settings ***
Documentation       Search Page Actions


*** Variables ***
${PRODUCT_LIST}             css=h5[itemprop="name"]>a
${SEARCH_RESULT_VALUE}      css=.page-heading .lighter


*** Keywords ***
Choose The Item
    [Arguments]     ${productName_arg}

    @{listOfProducts} =     Get Elements    ${PRODUCT_LIST}  

    ${selectedItem} =       Set Variable    ${EMPTY}

    FOR     ${element}    IN    @{listOfProducts}
        ${productNamePage} =    Get Text        ${element}
        ${selectedItem} =   Set Variable    ${element}
        Exit For Loop IF    "${productNamePage}" == "${productName_arg}"
        Log To Console      ${productNamePage}
    END

    Click   ${selectedItem}


Verify That a Product Page Is Open
    Wait For Elements State     ${SEARCH_RESULT_HEADING}    visible
