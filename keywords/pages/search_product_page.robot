*** Keywords ***
Search Product
    [Arguments]     ${product}  
    Browser.Fill Text       ${search_product_locator.txt_search_product}         ${product} 

Click search button
    Click       ${search_product_locator.bnt_search_product}

Click View Product
    Click       ${search_product_locator.bnt_select_product} 

Check and increase quantity 
    # Wait For Elements State    css=[data-testid="productdetail-stock"]    visible    timeout=30000
    # ดึงค่า available
    ${available_text}=    Get Text    ${search_product_locator.txt_available_product}
    # ตัด "Available: " ออก เหลือแค่ตัวเลข
    ${available}=    String.Fetch From Right    ${available_text}     ${space}  

    IF    ${available} <= 3500
        FOR    ${i}    IN RANGE    4
            Click    ${search_product_locator.bnt_increase_quantity}
        END
    ELSE
        FOR    ${i}    IN RANGE    2
            Click    ${search_product_locator.bnt_increase_quantity}
        END
    END

Verify product title
    [Arguments]     ${product} 
    ${name_product}=    Get text    ${search_product_locator.lbl_product_titile} 
    ${name_product}=    String.Fetch From Left    ${name_product}    \n
    # Should Be Equal    ${name_product}    ${product}
    RETURN    ${name_product}

Verify available amount
    [Arguments]     ${amount}
    ${amount_num}=   Get text        ${search_product_locator.lbl_available_amount}
    ${available}=    String.Fetch From Right    ${amount_num}     ${space} 
    Should Be True    ${available} < 3500

Verify total price
    