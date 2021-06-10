*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.amazon.in/

*** Test Cases ***
Login Fipkart
    Open Browser    https://www.amazon.in/    chrome
    maximize browser window
    Click Element    //*[@id="nav-signin-tooltip"]/a/span    
    Sleep    2s    
    Input Text    //*[@id="ap_email"]     8401608858
    Click Element    //*[@id="continue"]    
    input text    xpath://input[@type="password"]     Tommy@8523
    Click Element    //*[@id="signInSubmit"]    
    Sleep    2s    
    input text      xpath://input[@type="text"]          new apple watch series 6 gps + cellular, 44mm - aluminium case
    Sleep    2s    
    Click Element    //*[@id="nav-search-bar-form"]/div[3]/div
    Sleep    2s
    @{parent_window}=   get window handles
    wait until element is visible    //*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[6]/div/span/div/div/div[2]/div[2]/div/div[1]/h2/a/span    25s
    run keyword and ignore error    click element    //*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[6]/div/span/div/div/div[2]/div[2]/div/div[1]/h2/a/span
    @{child_window}=   get window handles
    switch window    NEW
    ${title}=   get title
    log to console    ${title}
    Sleep    2s
        Wait Until Element Is Visible    //*[@id="add-to-cart-button"]   
    Click Element    //*[@id="add-to-cart-button"]
    Sleep    2s
    Wait Until Element Is Visible    //div[normalize-space()="Cart"]    
    Click Element    //div[normalize-space()="Cart"]
    Wait Until Element Is Visible    //*[@id="sc-item-Cab2efa30-3158-4a45-8e31-f7b4c8d0eb57"]/div[4]/div/div[1]/div/div/div[2]/div[1]/span[2]/span/input    
    Click Element    //*[@id="sc-item-Cab2efa30-3158-4a45-8e31-f7b4c8d0eb57"]/div[4]/div/div[1]/div/div/div[2]/div[1]/span[2]/span/input
    Sleep    2s         
    Close Browser