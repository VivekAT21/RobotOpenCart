*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot
Resource  ../Pages/AdminLoginPage.robot
Resource  ../Resources/Datamanger.robot
Resource  ../Pages/DashboardPage.robot

Test Setup  Launch application  ${BROWSER}  ${ADMINBASEURL}
Test Teardown  Close browser session

*** Variables ***
${loginData}

*** Keywords ***
Test Setup  Launch application  ${BROWSER}  ${ADMINBASEURL}
Test Teardown  Close browser session

*** Test Cases ***
Verify page title
    title should be  Administration

Verify that user should land on "Dashborad" after login
    [Tags]  Sanity
    Given AdminLoginPage.login into the application
    And set browser implicit wait  5 seconds
    Then title should be  Dashboard

Verify user is able to login using XLSX for different login details
    [Tags]  DataManager
    ${DataFile} =  Datamanger.Get xlsx data  ${ACCOUNT_XLSX}  ${ACCOUNT_SHEETNAME}
    FOR  ${loginData}  IN  @{DataFile}
        set browser implicit wait  5 seconds
        Enter login credentials using Datamanager  ${loginData}
        title should be  Dashboard
        DashboardPage.Logout from the application
    END