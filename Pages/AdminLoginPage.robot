*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Locators.robot
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot

*** Keywords ***
Login into the application
    Enter text  ${ADMIN_EMAIL_ID}  ${USEREMAIL}
    Enter text  ${ADMIN_PASSWORD_ID}  ${PASSWORD}
    Click on the button  ${ADMIN_LOGIN_BTN_XPATH}

Enter login credentials using Datamanager
    [Arguments]  ${loginData}
    Enter text  ${ADMIN_EMAIL_ID}  ${loginData[0]}
    Enter text  ${ADMIN_PASSWORD_ID}  ${loginData[1]}
    Hit login button

Hit login button
    Click on the button  ${ADMIN_LOGIN_BTN_XPATH}
    [Timeout]  10 seconds

Get page title
    ${page_title} =  Get the page title
    [Return]  ${page_title}