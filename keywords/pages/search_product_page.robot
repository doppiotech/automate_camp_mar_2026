*** Keywords ***
Input Product Name
    [Arguments]    ${productname}
    Browser.Fill Text    ${search_product_locator.txt_productname}    ${productname}

Click Search Icon
    Browser.Click    ${search_product_locator.btn_search}

Click View Detail Product
    Browser.Click    ${search_product_locator.btn_view_detail_product}