*** Variables ***
${create_account_locator.txt_fullname}               css=input[placeholder="Full Name"]
${create_account_locator.txt_mobile}                 css=input[type="tel"]
${create_account_locator.txt_email}                  css=input[type="email"]
${create_account_locator.txt_password}               css=input[type="password"]
${create_account_locator.txt_confirm_password}       css=input[type="password"] >> nth =1
${create_account_locator.btn_create_account}         css=#btn-signup
# ${create_account_locator.lbl_verify_account}         css=#btn-account span:text-is("***email***")


