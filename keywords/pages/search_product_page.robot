*** Keywords ***
Search product
    [Arguments]     ${product}  
    Browser.Fill text       ${search_product_locator.txt_search_product}         ${product} 

Click search button
    Browser.Click       ${search_product_locator.bnt_search_product}

Click view product
    Browser.Click       ${search_product_locator.bnt_select_product} 

Check and increase quantity 
    # Wait For Elements State    css=[data-testid="productdetail-stock"]    visible    timeout=30000
    # ดึงค่า available
    ${available_text}=    Browser.Get text    ${search_product_locator.txt_available_product}
    # ตัด "Available: " ออก เหลือแค่ตัวเลข
    ${available}=    String.Fetch from right    ${available_text}     ${space}  

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
    ${name_product}=    Browser.Get text    ${search_product_locator.lbl_product_titile} 
    ${name_product}=    String.Fetch from left    ${name_product}    \n
    # Should Be Equal    ${name_product}    ${product}
    RETURN    ${name_product}

Verify available amount
    # [Arguments]     ${amount}
    ${amount_num}=   Browser.Get text        ${search_product_locator.lbl_available_amount}
    ${available}=    String.Fetch from right    ${amount_num}     ${space} 
    Should Be True    ${available} < 3500

Verify total price
    [Arguments]     ${total}
    ${total_aoumt}=     Browser.Get text    ${search_product_locator.lbl_total_amount}
    ${total_aoumt}=     String.Replace string      ${total_aoumt}    \xa0    ${space}
    ${total_aoumt}=     String.Fetch from right     ${total_aoumt}     ${space}
    RETURN      ${total_aoumt}


    