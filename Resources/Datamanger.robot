*** Settings ***
Library  ../CustomLib/FileUtility.py


*** Keywords ***
Get csv data
    [Arguments]  ${filePath}
    ${data} =  read_csv_file  ${filePath}
    [Return]  ${data}

Get xlsx data
    [Arguments]  ${filepath}  ${sheetname}
    ${data} =  read_xlsx_file2  ${filepath}  ${sheetname}
    [Return]  ${data}