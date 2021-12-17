*** Settings ***
Library  SeleniumLibrary
Resource  ../Pages/Basefile.robot
Resource  ../Pages/DashboardPage.robot
Resource  ../Pages/AdminLoginPage.robot

*** Keywords ***
Navigate to Order page
    AdminLoginPage.login into the application
    set browser implicit wait  5 seconds
    DashboardPage.Navigate to Order page from view more link

Count number of rows
    ${rows_count} =  Get number of rows in table  ${ORDER_TABLE_ROWS_XPATH}
    [Return]  ${rows_count}

Count number of columns
    ${columns_count} =  Get number of columns in table  ${ORDER_TABLE_COLUMNS_XPATH}
    [Return]  ${columns_count}

Get required cell data
    [Arguments]  ${row_num}  ${col_num}
    ${cell_value} =  Get value of table column  ${ORDER_TABLE_XPATH}  ${row_num}  ${col_num}
    [Return]  ${cell_value}