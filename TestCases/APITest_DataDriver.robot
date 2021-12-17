*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  DataDriver  ..//TestData//Datafile_dd.xlsx  sheet_name=APITest
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot

Test Template  Add user

*** Test Cases ***
Verify that user should get created  ${name}  ${job}


*** Keywords ***
#Add user
#    [Arguments]  ${name}  ${job}
#    ${body}=  create dictionary  name=${name}   job=${job}
#    ${header}=  create dictionary  Content-Type=text/plain
#    ${string_resp}=  POST  ${APIBASE_URL}/api/users  data=${body}  headers=${header}
#    ${json_resp}=  convert string to json  ${string_resp.content}
#    ${user_id}=  get value from json  ${json_resp}  $.id
#    log  ${user_id}
#    Status Should Be  201

Add user
    [Arguments]  ${name}  ${job}
    ${body}=  create dictionary  name=${name}   job=${job}
    ${header}=  create dictionary  Content-Type=text/plain
    ${api_url}=  catenate  ${APIBASE_URL}/api/users
    ${string_resp}=  Get response from the PUT request  ${api_url}  ${body}  ${header}
    ${user_id}=  get value from json  ${string_resp}  $.id
    log  ${user_id}
    Status Should Be  201