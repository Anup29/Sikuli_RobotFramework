*** Settings ***
Library           SikuliLibrary
Library           SeleniumLibrary

*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/index.php/auth/login
${BROWSER}        chrome
${imagePath}      C:\\Users\\rohit\\PycharmProjects\\sikuli_orangehrm\\images\\
${similarity}     0.90
${username}       Admin
${password}       admin123
${username1}      SDADAS
${password1}      DFDSFSDF
*** Keywords ***
Open Browser To Landing Page
    Open browser    ${url}     ${BROWSER}
    maximize browser window
    Set Selenium Implicit Wait    7
    Add image path    ${imagePath}
Close Browser for HRM
    Close Browser
