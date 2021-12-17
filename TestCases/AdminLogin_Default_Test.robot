*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot
Resource  ../Pages/AdminLoginPage.robot

Test Setup  Launch application  ${BROWSER}  ${ADMINBASEURL}
Test Teardown  Close browser session

*** Test Cases ***
Verify page title
    Validate the page title  Administration

Verify if user is able to login
    [Tags]  Sanity
    Given AdminLoginPage.login into the application
    And set browser implicit wait  5 seconds
    Then title should be  Dashboard