*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://www.cel.ro/index.php?main_page=login&cust=1
${browser}      chrome
${username}     completeHere
${password}     completeHere
*** Test Cases ***
Login
    open browser    ${url}      ${browser}
    maximize browser window
    input text    id:email_address      ${username}
    input text    name:passwordx        ${password}
    click button    xpath://button[contains(text(),'Conecteaza-te')]
    input text    id:keyword        casti bluetooth apple airpods pro true
    submit form
    click link      https://www.cel.ro/cumpara_market/1939486/0
    select radio button     plata       Numerar sau ramburs
    select checkbox     read_retur
    select checkbox     e_major
    click element    xpath://*[@id="create_account_form"]/div[7]/div/button
    close browser
*** Keywords ***
