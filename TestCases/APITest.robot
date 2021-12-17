*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  SeleniumLibrary
Resource  ../Resources/Constants.robot
Resource  ../Pages/Basefile.robot

*** Variables ***
${User_api}  /api/users?
${page_number}     2
${email_id}  eve.holt@reqres.in

*** Test Cases ***
Verify that data gets displayed using "Create Session" method
    Create Session  get_student_name  ${APIBASE_URL}
    ${response}=  GET Request  get_student_name  /api/users?page=${page_number}
#    GET On Session  get_student_name  /api/users?  params=page=${page_number}
    log to console  ${response.status_code}
    log to console  ${response.content}

Verify that data gets displayed WITHOUT using "Create Session" method
    ${response}=  GET  ${APIBASE_URL}${User_api}  params=page=${page_number}
    Status Should Be  200

Verify that data gets displayed using "BASEFILE" generic method
    ${api_url}=  catenate  ${APIBASE_URL}${User_api}page=${page_number}
    ${response}=  Get response from the GET request  ${api_url}
    Status Should Be  200

Verify that user gets created with POST request
    ${body}=  create dictionary  name=vivek003   job=QA
    ${header}=  create dictionary  Content-Type=text/plain
    ${string_resp}=  POST  ${APIBASE_URL}/api/users  data=${body}  headers=${header}
    ${json_resp}=  convert string to json  ${string_resp.content}
    ${user_id}=  get value from json  ${json_resp}  $.id
    log  ${user_id}
    Status Should Be  201
#
#Verify that user get sucessfully login
#    ${body}=  create dictionary  email=${email_id}   password=cityslicka
#    ${header}=  create dictionary  Content-Type=application/json
#    ${string_resp}=  POST  ${APIBASE_URL}/api/login/  data=${body}  headers=${header}
#    ${json_resp}=  convert string to json  ${string_resp.content}
#    ${user_token}=  get value from json  ${json_resp}  $.token
#    log  ${user_token}
#    Status Should Be  200
