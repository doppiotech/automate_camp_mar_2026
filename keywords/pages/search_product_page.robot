***Keywords***
Search Product
    [Arguments]     ${product}
    Browser.Fill text       ${search_product_locator.txt_search}       ${product}

Click icon Search
    Browser.Click       ${search_product_locator.btn_search}

Click View Detail icon
    Browser.Click       ${search_product_locator.btn_product}


    

