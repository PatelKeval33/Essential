*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.flipkart.com/

*** Test Cases ***
Login Fipkart
    Open Browser    https://www.flipkart.com/    chrome
    Input Text    xpath://body/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/input[1]     8401608858
    input text    xpath://input[@type="password"]     Tommy@88552233
    click element    //button[@type="submit" and @class="_2KpZ6l _2HKlqd _3AWRsL"]
    maximize browser window
    Sleep    2s    
    input text      xpath://input[@type="text"]          Slipper For Men
    Sleep    2s    
    Click Element    xpath://button[@type="submit" and @class="L0Z3Pu"]
    Sleep    2s
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[2]/div[4]/div[1]/select/option[3]    
    Sleep    2s    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[2]/div[4]/div[3]/select/option[1]    
    Sleep    2s   
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[3]/label/div[1]    
    Sleep    2s
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[4]/div/div    
    Sleep    2s 
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[4]/div[2]/div[2]/span    
    Sleep    2s     
    Click Element    //div[normalize-space()="PUMA"]     
    Sleep    2s
    Click Element    //*[normalize-space()="Apply Filters"]
    Sleep    2S    
    Click Element    //*[normalize-space()="Slippers"]
    Sleep    2S    
    @{parent_window}=   get window handles
    wait until element is visible    //*[@id="container"]/div/div[3]/div/div[2]/div[8]/div/div[2]/div/a/div[1]/div/div/div/img   22s
    run keyword and ignore error    click element    //*[@id="container"]/div/div[3]/div/div[2]/div[8]/div/div[2]/div/a/div[1]/div/div/div/img
    @{child_window}=   get window handles
    switch window    NEW
    ${title}=   get title
    log to console    ${title}
    Sleep    2s   
    Wait Until Element Is Visible    //*[normalize-space()="11"]    
    Click Element    //*[normalize-space()="11"]    
    Wait Until Element Is Visible    //button[@class="_2KpZ6l _2U9uOA _3v1-ww"]    
    Click Element    //button[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    Wait Until Element Is Visible    //div[normalize-space()="Remove"]    
    Click Element    //div[normalize-space()="Remove"]
    Wait Until Element Is Visible    //div[2][normalize-space()="Remove"]    
    Click Element    //div[2][normalize-space()="Remove"]
    Sleep    2s
    Close Browser