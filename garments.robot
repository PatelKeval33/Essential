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
    Sleep    5s    
    input text      xpath://input[@type="text"]          T Shirt
    Sleep    2s    
    Click Element    xpath://button[@type="submit" and @class="L0Z3Pu"]
    Sleep    2s
    Click Element    //*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/div/section[2]/div[4]/div[1]/select/option[4]    
    Sleep    2s    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[3]/label/div[1]    
    Sleep    2s    
    Click Element   xpath://input[@type="text" and @class="_34uFYj"]
    Sleep    2s
    Wait Until Element Is Visible    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[4]/div[2]/div[2]/span   
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[4]/div[2]/div[2]/span    
    Sleep    2s    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[4]/div[2]/div/div[1]/div[1]/div[1]/div[22]   
    Sleep    2s    
    Click Element    //*[normalize-space()="U.S. POLO ASSN."]  
    Sleep    2s
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[4]/div[2]/div/div[1]/div[3]/div/div[2]   
    Sleep    2s    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[5]/div[2]/div/div[1]/div/label/div[2] 
    Sleep    2s    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[9]/div/div   
    Sleep    2s    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div/div/div/section[9]/div[2]/div/div[1]/div/label/div[2]     
    Sleep    2s    
    Click Element    //div[normalize-space()="Color"]    
    Sleep    2s
    Click Element    //div[normalize-space()="Black"]    
    Sleep    2s
    @{parent_window}=   get window handles
    wait until element is visible    //*[normalize-space()="Printed Men Polo Neck Black T-Shirt"]   22s
    click element    //*[normalize-space()="Printed Men Polo Neck Black T-Shirt"]
    @{child_window}=   get window handles
    switch window    NEW
    ${title}=   get title
    log to console    ${title}
    Sleep    2s
    Wait Until Element Is Visible    //*[normalize-space()="XXL"]        
    Click Element    //*[normalize-space()="XXL"]    
    Sleep    2s       
    Wait Until Element Is Visible    //button[@class="_2KpZ6l _2U9uOA _3v1-ww"]    
    Click Element    //button[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    Wait Until Element Is Visible    //div[normalize-space()="Remove"]    
    Click Element    //div[normalize-space()="Remove"]
    Wait Until Element Is Visible    //div[2][normalize-space()="Remove"]    
    Click Element    //div[2][normalize-space()="Remove"]
    Sleep    5s
    Close Browser