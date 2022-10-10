*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${base_url}=

*** Test Cases ***

POST_Request_End_to_End_TestCase
  create session  AddData  ${base_url}
  ${body}=  create dictionary  first_name=Oba  middle_name=A  last_name=World  date_of_Birth=12/12/1990
  ${header}=  create dictionary  Content-Type=application/json
  ${response}=  post request  AddData    data=${body}  headers=${header}
  log to console  ${response.status_code}
  log to console  ${response}







*** Keywords ***
























