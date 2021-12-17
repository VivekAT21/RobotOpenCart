*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ..//TestData//sample_dd.csv
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot
Resource  ../Pages/AdminLoginPage.robot

Test Setup  Launch application  ${BROWSER}  ${ADMINBASEURL}
Test Teardown  Close browser session
Test Template  Login with multiple data using CSV

*** Test Cases ***
verifyy that user should be able to login into the application  ${USEREMAIL}  ${PASSWORD}

*** Keywords ***
Login with multiple data using CSV
    [Tags]  Regression
    [Arguments]  ${USEREMAIL}  ${PASSWORD}
    AdminLoginPage.login into the application
    Then title should be  Dashboard