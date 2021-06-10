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
    input text      xpath://input[@type="text"]          New Apple iPhone 12 Pro Max (512GB) - Silver
    Sleep    2s    
    Click Element    //*[@id="nav-search-bar-form"]/div[3]/div
    Sleep    2s
    @{parent_window}=   get window handles
    wait until element is visible    //*[normalize-space()="New Apple iPhone 12 Pro Max (512GB) - Silver with Apple 20W USB-C Power Adapter"]    22s
    run keyword and ignore error    click element    //*[normalize-space()="New Apple iPhone 12 Pro Max (512GB) - Silver with Apple 20W USB-C Power Adapter"]
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
    Wait Until Element Is Visible    //*[@id="sc-item-C6f387394-4ea4-4f45-837f-60b72843b628"]/div[4]/div/div[1]/div/div/div[2]/div[1]/span[2]/span/input    
    Click Element    //*[@id="sc-item-C6f387394-4ea4-4f45-837f-60b72843b628"]/div[4]/div/div[1]/div/div/div[2]/div[1]/span[2]/span/input
    Sleep    2s         
    Close Browser