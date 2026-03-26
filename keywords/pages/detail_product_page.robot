*** Keywords ***
Adjust product quantity
    # ดึงค่า available (สมมติ locator นี้คือจำนวนสินค้า)
    ${text}=    Browser.Get text    ${detail_product_locator.txt_avaliable}    #div:has-text("91.00")
    # ${string_convert}    String.Fetch From Right    ${text}    ${SPACE}
    # ${available}=    Evaluate    int(${text})
    ${string_convert}    String.Fetch from right    ${text}    ${SPACE}
    # Convert To Integer    item=${text} 
    # String ไปตัด THB

    IF    ${string_convert} <= 3500
        FOR    ${i}    IN RANGE    4
            Browser.Click    ${detail_product_locator.btn_increase_product}
        END
    ELSE IF    ${string_convert} > 3501
        FOR    ${i}    IN RANGE    2
            Browser.Click    ${detail_product_locator.btn_increase_product}
        END
    END

Verify product name
    Browser.Wait for elements state    ${detail_product_locator.txt_name_product}
    # [Arguments]    ${product_name}
    # ${text}=    Get Text    css=h1:text-is("Ceramic Mug")  
    # ${productname}    String.Fetch From Left    ${text}     \n
    # Should Be Equal    ${productname}    ${product_name}

Verify avaliable amount
    ${text}=    Browser.Get text    ${detail_product_locator.txt_avaliable}  
    ${avilable}    String.Fetch from right    ${text}    ${SPACE}    
    ${avilable_convert}=    BuiltIn.Convert to integer    ${avilable}
    BuiltIn.Should be true    ${avilable_convert} < 3500  

Verify total price
    ${price_text}=    Get text    ${detail_product_locator.txt_total_price}
    ${price}    String.Replace string    ${price_text}    \xa0    ${SPACE}
    ${price_convert}    String.Fetch from right    ${price}     ${SPACE} 
    # ${price_convert}=    Convert To Integer    ${price_convert}
    BuiltIn.Should be true    ${price_convert} == 455.00
