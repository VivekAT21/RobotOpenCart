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

*** Test Cases ***
Verify that user land on Administration page
    title should be  Administration

Verify that user should be able to login with different data
    [Tags]  DataManager2
    ${CompleteCSVFile} =  Get csv data  ${CSVPATH_DM}
    FOR  ${loginData}  IN  @{CompleteCSVFile}
        set browser implicit wait  5 seconds
        Enter login credentials using Datamanager  ${loginData}
        title should be  Dashboard
        DashboardPage.Logout from the application
    END

Verify that user should land on "Dashboard" page after login
    [Tags]  Sanity
    Given AdminLoginPage.login into the application
    And set browser implicit wait  5 seconds
    Then title should be  Dashboard