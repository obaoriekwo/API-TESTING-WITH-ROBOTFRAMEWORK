*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${base_url}=

*** Test Cases ***

Put_Request create resource
  create session  AddData  ${base_url}
  ${body}=  create dictionary  first_name=Testing  middle_name=ABCD1234  last_name=World  date_of_Birth=12/12/1990
  ${header}=  create dictionary  Content-Type=application/json
  ${response}=  post request  AddData    data=${body}  headers=${header}
  log to console  ${response.status_code}
  log to console  ${response}
