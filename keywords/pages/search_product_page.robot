*** Keywords ***
Input product name
    [Arguments]    ${productname}
    Browser.Fill text    ${search_product_locator.txt_productname}    ${productname}

Click search icon
    Browser.Click    ${search_product_locator.btn_search}

Click view detail product
    Browser.Click    ${search_product_locator.btn_view_detail_product}