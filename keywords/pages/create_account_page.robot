***Keywords***
Input fullname
    [Arguments]     ${fullname}
    Browser.Fill text           selector=${create_account_locator.txt_fullname}        txt=${fullname}

Input phone number
    [Arguments]     ${phone_number}
    Browser.Fill text           selector=${create_account_locator.txt_phone_number}        txt=${phone_number}

Input email fah
    [Arguments]     ${email}
    Browser.Fill text           selector=${create_account_locator.txt_email}           txt=${email}