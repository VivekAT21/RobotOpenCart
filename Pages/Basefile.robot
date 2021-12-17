*** Settings ***
Library  SeleniumLibrary
Library  Dialogs
Resource  ../Resources/Constants.robot

*** Keywords ***
Launch application
    [Arguments]  ${browser_name}  ${user_base_url}
    open browser  about:blank   ${browserName}
    maximize browser window
    go to  ${user_base_url}

Clear entered text
    [Arguments]  ${web_element}
    clear element text  ${web_element}

Enter text
    [Arguments]  ${web_element}  ${input_text}
    input text  ${web_element}  ${input_text}

Click on the button
    [Arguments]  ${web_element}
    click button  ${web_element}

Click on the element
    [Arguments]  ${web_element}
    click element  ${web_element}

Click on the link
    [Arguments]  ${web_element}
    click on the link  ${web_element}

Fetch the text
    [Arguments]  ${web_element}
    ${result_text} =  get text  ${web_element}
    [Return]  ${result_text}

Get the page title
    ${page_title} =  get title
    [Return]  ${page_title}

Close browser session
    close browser

Get number of rows in table
    [Arguments]  ${webelement}
    ${rows_count} =  get element count  ${webelement}
    [Return]  ${rows_count}

Get number of columns in table
    [Arguments]  ${webelement}
    ${columns_count} =  get element count  ${webelement}
    [Return]  ${columns_count}

Get user input and set variable
    [Arguments]    ${user_input_value}
    ${set_user_input} =  get selection from user  Please provide input
    set global variable  ${SET_USER_INPUT}  ${user_input_value}

Get value of table column
    [Arguments]  ${web_element}  ${row_num}  ${col_num}
    ${cell_value} =  get table cell  ${web_element}  ${row_num}  ${col_num}
    [Return]  ${cell_value}

Validate the page title
    [Arguments]  ${expected_title}
    title should be  ${expected_title}

Pause the execution
    pause execution

Get user input to proceed the script
    execute manual step  Do something manually! It Failed!

Get response from the GET request
    [Arguments]  ${api_url}
    ${req_response} =  GET  ${api_url}
    [Return]  ${req_response}

Get response from the PUT request
    [Arguments]  ${api_url}  ${body}  ${header}
    ${string_resp}=  POST  ${api_url}  data=${body}  headers=${header}
    ${json_resp}=  convert string to json  ${string_resp.content}
    [Return]  ${json_resp}

Get random string
    [Arguments]  ${prefix}
    ${random_str}    Evaluate    random.sample(range(1, 11), 4)    random
    ${final_str}=  catenate  ${prefix}${random_str}
    [Return]  ${final_str}