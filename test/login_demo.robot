*** Settings ***
Resource        ../keywords/keywords.robot



*** Test Cases ***
Login Orange HRM Valid Credentials
    Open Browser To Landing Page
    Exists    ${imagePath}username.png    5
    SikuliLibrary.Input Text    ${imagePath}username.png    ${username}
    SikuliLibrary.Input Text    ${imagePath}password.png    ${password}
    Click    ${imagePath}login_btn.png
    Sleep    5
    Exists    ${imagePath}login_success.png    5
    Close Browser for HRM

Login Orange HRM Invalid Credentials
    Open Browser To Landing Page
    SikuliLibrary.Input Text    ${imagePath}username.png    ${username1}
    SikuliLibrary.Input Text    ${imagePath}password.png    ${password1}
    Click    ${imagePath}login_btn.png
    Sleep    5
    Exists    ${imagePath}invalid.png    5
    Close Browser for HRM