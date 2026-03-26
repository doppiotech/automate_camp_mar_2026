*** Variables ***
${product_locator.product_stock}    css=[data-testid="productdetail-stock"]
${product_locator.btn_increase_quantity}    css=button[type="button"][aria-label="Increase quantity"]
${product_locator.product_name}    css=h1[data-testid="productdetail-title"]
${product_locator.product_price}    css=span[data-testid="productdetail-price"]
${product_locator.total_price}    css=span:text-is("Total (incl. VAT)") + span
${product_locator.txt_quantity}    css=#qty-input