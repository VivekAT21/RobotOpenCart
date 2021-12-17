*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Locators.robot
Resource  ../Pages/Basefile.robot

*** Keywords ***
Logout from the application
    Click on the element  ${ADMIN_LOGOUT_XPATH}

Navigate to Order page from view more link
    Click on the element  ${ADMIN_ORDER_VIEWMORE_XPATH}