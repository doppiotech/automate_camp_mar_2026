*** Keywords ***
# Verify Stock
#     [Documentation]    Compares ceramic mug stock with the expected value
#     ${text_product_stock}=    Get Text    ${product_locator.product_stock}
#     ${stock}=    Replace String    ${text_product_stock}    Available:     ${EMPTY}
#     ${stock}=    Strip String    ${stock}
#     ${stock_int}=    Convert To Integer    ${stock}
#     Should Be True    ${stock_int} <= 3500
#     RETURN    ${stock_int}

Verify Stock
    ${text_product_stock}=    Get Text    ${product_locator.product_stock}
    ${stock}=    Fetch From Right    ${text_product_stock}    marker=${SPACE}
    RETURN    ${stock}

Increase Quantity
    [Arguments]    ${stock_int}    ${click_count}=5
    IF    "${stock_int}" <= "3500"
        Click With Options   ${product_locator.btn_increase_quantity}   clickCount=${click_count}
        ${quantity}=    Get Property    ${product_locator.txt_quantity}    value
        ${qty_int}=    Convert To Integer    ${quantity}
        ${qty_by_click}=    Evaluate   ${click_count} + 1
        Should Be Equal   ${qty_int}    ${qty_by_click}
        RETURN    ${quantity}
    ELSE IF    ${stock_int} > 3501
        Click With Options   ${product_locator.btn_increase_quantity}   clickCount=${click_count}
        ${quantity}=    Get Property    ${product_locator.txt_quantity}    value
        ${qty_int}=    Convert To Integer    ${quantity}
        ${qty_by_click}=    Evaluate   ${click_count} + 1
        Should Be Equal     ${qty_int}    ${qty_by_click}
        RETURN    ${quantity}
    END

# Verify Quantity
#     ${quantity}=    Get Property    ${product_locator.txt_quantity}    value
#     ${qty_int}=    Convert To Integer    ${quantity}
#     RETURN    ${qty_int}


Verify Product Name
    [Arguments]   ${expeected_product_name}
    ${text_product_name}=    Get Text    ${product_locator.product_name}    *=    ${expeected_product_name}
    # Log To Console    product_name=${text_product_name}
    # Should Contain    ${text_product_name}    ${translation.ceramic_mug}

Verify Total Price
    [Arguments]    ${quantity}
    ${text_total_price}=    Get Text    ${product_locator.total_price}
    ${total_price}=    Replace String    ${text_total_price}    THB     ${EMPTY}
    ${total_price}=    Strip String    ${total_price}
    ${total_price_num}=    Convert To Number    ${total_price}
    ${stock_int}=    Verify Stock
    IF    ${stock_int} <= 3500
        ${expected_total_price}=   Evaluate    ${TC_001.CeramicMugPrice} * ${quantity}
        Should Be Equal As Integers    ${total_price_num}    ${expected_total_price}
    ELSE IF    ${stock_int} > 3501
        ${expected_total_price}=    Evaluate    ${TC_001.CeramicMugPrice} * ${quantity}
        Should Be Equal As Integers    ${total_price_num}    ${expected_total_price}
    END
 
