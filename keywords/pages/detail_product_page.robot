*** Keywords ***
Adjust Product Quantity
    # ดึงค่า available (สมมติ locator นี้คือจำนวนสินค้า)
    ${text}=    Get Text    ${detail_product_locator.txt_avaliable}    #div:has-text("91.00")
    # ${string_convert}    String.Fetch From Right    ${text}    ${SPACE}
    # ${available}=    Evaluate    int(${text})
    ${string_convert}    String.Fetch From Right    ${text}    ${SPACE}
    # Convert To Integer    item=${text} 
    # String ไปตัด THB 

    IF    ${string_convert} <= 3500
        FOR    ${i}    IN RANGE    4
            Click    ${detail_product_locator.btn_increase_product}
        END
    ELSE IF    ${string_convert} > 3501
        FOR    ${i}    IN RANGE    2
            Click    ${detail_product_locator.btn_increase_product}
        END
    END

Verify product name
    # Browser.Wait For Elements State    css=h1:text-is("Ceramic Mug")
    # [Arguments]    {$product}
    ${text}=    Get Text    css=h1:text-is("Ceramic Mug")  
    ${productname}    String.Fetch From Left    ${text}     \n
    Should Be Equal    ${productname}    Ceramic Mug

Verify avaliable amount
    ${text}=    Get Text    ${detail_product_locator.txt_avaliable}  
    ${avilable}    String.Fetch From Right    ${text}    ${SPACE}      
    Should Be True    ${avilable}    <    3500

Verify total price
    Browser.Wait For Elements State    selector=
