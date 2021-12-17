*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ..//TestData//Datafile_dd.xlsx  sheet_name=Sheet1
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot
Resource  ../Pages/AdminLoginPage.robot

Test Setup  Launch application  ${BROWSER}  ${ADMINBASEURL}
Test Teardown  Close browser session
Test Template  Veriy login with multiple data

*** Test Cases ***
verify that user is able to login into the application  ${USEREMAIL}  ${PASSWORD}

*** Keywords ***
Veriy login with multiple data
    [Tags]  Regression
    [Arguments]  ${USEREMAIL}  ${PASSWORD}
    AdminLoginPage.login into the application
    Then title should be  Dashboard