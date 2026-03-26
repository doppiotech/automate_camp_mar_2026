*** Variables ***
${search_product_locator.txt_search_product}         css=[data-testid="nav-search-input"]
${search_product_locator.btn_search_product}         css=button [aria-label="nav-svg-0"]
${search_product_locator.btn_select_product}         css=[data-testid="product-card-view-11"]
${search_product_locator.txt_available_product}      css=[data-testid="productdetail-stock"]
${search_product_locator.btn_increase_quantity}      css=[aria-label="Increase quantity"] 
${search_product_locator.lbl_product_titile}         css=h1:has-text("${translation.lbl_product_titile}")
${search_product_locator.lbl_available_amount}       css=[data-testid="productdetail-stock"]
${search_product_locator.lbl_total_amount}           css=[aria-label="productdetail-div-2"] span:has-text("THB")