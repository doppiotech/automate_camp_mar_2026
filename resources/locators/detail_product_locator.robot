*** Variables ***
${detail_product_locator.txt_avaliable}               css=[data-testid="productdetail-stock"]
${detail_product_locator.btn_increase_product}        css=#btn-qty-inc\
${detail_product_locator.txt_name_product}            css=h1:text-is("Ceramic Mug")
${detail_product_locator.txt_total_price}            css=span:text-is("Total (incl. VAT)") + span:has-text("THB")